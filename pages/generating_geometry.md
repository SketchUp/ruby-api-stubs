# @title Generating Geometry

There are multiple ways of creating geometry in SketchUp using the Ruby API. Which approach to choose depends on what the extension is doing.

## {Sketchup::Entities#add_face} et. al.

{Sketchup::Entities} lets you add faces and edges via {Sketchup::Entities#add_face}, {Sketchup::Entities#add_line} and {Sketchup::Entities#add_edges}.

These methods will merge and split entities similar to how SketchUp's own Rectangle and Line tool. They are best suited for scenarios when you only add a few entities at a time - like a drawing tool.

```ruby
module Example

  # @example
  #   Example.create_faces_splitting_shared_edge
  #
  def self.create_faces_splitting_shared_edge
    model = Sketchup.active_model
    entities = model.active_entities
    model.start_operation('Faces', true)
    face1 = entities.add_face([0, 0, 0], [6, 0, 0], [6, 6, 0], [0, 6, 0])
    face2 = entities.add_face([6, 3, 0], [9, 3, 0], [9, 6, 0], [6, 6, 0])
    model.commit_operation
  end

end
```

```ruby
module Example

  # @example
  #   Example.create_cube
  #
  def self.create_cube
    model = Sketchup.active_model
    model.start_operation('Create Cube', true)
    group = model.active_entities.add_group
    entities = group.entities
    points = [
      Geom::Point3d.new(0,   0,   0),
      Geom::Point3d.new(1.m, 0,   0),
      Geom::Point3d.new(1.m, 1.m, 0),
      Geom::Point3d.new(0,   1.m, 0)
    ]
    face = entities.add_face(points)
    face.pushpull(-1.m)
    model.commit_operation
  end

end
```

## {Geom::PolygonMesh} and {Sketchup::Entities#fill_from_mesh}

{Geom::PolygonMesh} serves two purposes. One is to return the triangulation of a {Sketchup::Face}, via {Sketchup::Face#mesh}, useful for exporters.

The other purpose is to generate geometry when used along with {Sketchup::Entities#fill_from_mesh} and {Sketchup::Entities#add_faces_from_mesh}. {Sketchup::Entities#fill_from_mesh} is significantly faster than {Sketchup::Entities#add_faces_from_mesh}.

_Note that as of SketchUp 2022 {Sketchup::EntitiesBuilder} is the recommended method for created large amount of geometry._

The combination of {Geom::PolygonMesh} and {Sketchup::Entities#fill_from_mesh} is fast because it doesn't merge and split geometry like {Sketchup::Entities#add_face} does. Instead it only ensures that vertices and edges are de-duplicated and leaves it to the API user to create well formed geometry.

Beware that before SketchUp 2021.1 {Geom::PolygonMesh} was very inefficient when de-duplicating points. For that reason it was best to use {Geom::PolygonMesh#add_point} first and then use the returned indices with {Geom::PolygonMesh#add_polygon}.

```ruby
module Example

  # @param [Integer] rows
  # @param [Integer] columns
  # @return [Geom::PolygonMesh]
  def self.generate_grid_mesh(rows, columns)
    # Compute the number of points and polygons we'll create. This is important
    # for max performance so PolygonMesh can allocate enough memory up front
    # and choose appropriate internal algorithm for looking up points.
    num_polygons = rows * columns

    row_points = rows + 1
    col_points = columns + 1
    num_points = row_points * col_points

    mesh = Geom::PolygonMesh.new(num_points, num_polygons)

    # To minimize the number of times points are looked up they are added
    # explicitly before adding any polygons.
    # As of SketchUp 2021.1 this step is less important, one can pass the points
    # to mesh.add_polygon instead of the indicies. There is however always a
    # performance benefit of building the polygons with indicies.
    indicies = []
    row_points.times { |x|
      col_points.times { |y|
        point = Geom::Point3d.new(x * 10, y * 10, 0)
        indicies << mesh.add_point(point) 
      }
    }

    (0...rows).each { |x|
      (0...columns).each { |y|
        i1 = (col_points * y) + x
        i2 = i1 + 1
        i3 = i2 + col_points
        i4 = i3 - 1
        polygon = [i1, i2, i3, i4].map { |i| indicies[i] }
        mesh.add_polygon(polygon)
      }
    }

    mesh
  end

  # @example
  #   Example.create_grid(6, 8)
  #
  # @param [Integer] rows
  # @param [Integer] columns
  def self.create_grid(rows = 5, columns = 5)
    mesh = self.generate_grid_mesh(rows, columns)
    model = Sketchup.active_model
    model.start_operation('Grid', true)
    group = model.active_entities.add_group
    group.entities.fill_from_mesh(mesh, true, Geom::PolygonMesh::NO_SMOOTH_OR_HIDE)
    model.commit_operation
  end

end
```

The downside of this approach is that there is less control per-entity generated. Materials are added by {Sketchup::Entities#fill_from_mesh} to the whole mesh. Only limited control over per-edge properties such as {Sketchup::Edge#soft?}, {Sketchup::Edge#smooth?} and {Sketchup::Edge#hidden?} is offered. This comes a problem for importers of formats that support per-face materials.

## {Sketchup::EntitiesBuilder}

As of SketchUp 2022.0 the best alterative to generating bulk geometry is the {Sketchup::EntitiesBuilder} interface. Similar to {Geom::PolygonMesh} it only de-duplicates vertices and edges. It does however have an interface very similar to {Sketchup::Entities} which allows full control over per-entity properties.

### Maximizing performance

In scenarios with very high amount of geometry it might be a slight gain by creating all the unique 3D points in a pool up front and reusing them when creating the faces. Benchmark and profile before you go to this extent.

```ruby
module Example

  # @example
  #   Example.create_grid(6, 8)
  #
  # @param [Integer] rows
  # @param [Integer] columns
  def self.create_grid(rows = 5, columns = 5)
    model = Sketchup.active_model
    model.start_operation('Grid', true)

    # In scenarios with very high amount of geometry it might be a slight gain
    # by creating all the unique 3D points in a pool up front and reusing them
    # when creating the faces. Benchmark and profile before you go to this
    # extent.
    row_points = rows + 1
    col_points = columns + 1
    points = []
    row_points.times { |x|
      col_points.times { |y|
        points << Geom::Point3d.new(x * 10, y * 10, 0)
      }
    }

    model.active_entities.build { |builder|
      (0...rows).each { |x|
        (0...columns).each { |y|
          i1 = (col_points * y) + x
          i2 = i1 + 1
          i3 = i2 + col_points
          i4 = i3 - 1
          polygon = [i1, i2, i3, i4].map { |i| points[i] }
          builder.add_face(polygon)
        }
      }
    }
    model.commit_operation
  end

end
```

### Supporting older SketchUp versions

In some scenarios it is possible to leverage duck-typing to allow an extension to generate geometry with either {Sketchup::Entities} or {Sketchup::EntitiesBuilder}.

For this to work the code must not rely on {Sketchup::Entities#add_face}'s ability to split and intersect geometry as {Sketchup::EntitiesBuilder#add_face} will not behave similarly. The code must also not modify the position of the vertices for the duration of the builder's block.

```ruby
module Example

  # @example
  #   Example.create_cube
  def self.create_cube
    model = Sketchup.active_model
    model.start_operation('Cube', true)
    group = model.active_entities.add_group
    entities = group.entities
    if entities.respond_to?(:build)
      entities.build do |builder|
        self.add_cube_faces(builder)
      end
    else
      self.add_cube_faces(entities)
    end
    model.commit_operation
  end

  # This works even though {Sketchup::Entities} and {Sketchup::EntitiesBuilder}
  # are different interfaces because the method only uses methods that have
  # method signatures that are similar between them.
  #
  # @param [Sketchup::Entities, Sketchup::EntitiesBuilder] entities
  def self.add_cube_faces(entities)
    # ...
    entities.add_face(points1)
    entities.add_face(points2)
    entities.add_face(points3)
    entities.add_face(points4)
    entities.add_face(points5)
    entities.add_face(points6)
  end

end
```

### Ruby C Extension considerations

#### Calling {Sketchup::Entities#build}

```cpp
!!!cpp
// Good source on how to use Ruby's C API:
// https://silverhammermba.github.io/emberb/c/

VALUE handler(RB_BLOCK_CALL_FUNC_ARGLIST(builder, callback_arg))
{
  VALUE rb_ary_new_capa(4);
  // Add points ...
  VALUE face = rb_funcall(builder, rb_intern("add_face"), 1, points);
  return Qnil;
}

void generate(VALUE entities)
{
  VALUE result =
      rb_block_call(entities, rb_intern("build"), 0, NULL, handler, Qnil);
}
```

#### Optimizing and keeping Ruby objects alive

If you are generating geometry from an internal geometry representation you might have code that looks something like this:

```cpp
!!!cpp
#include <algorithm>
#include <vector>

void generate(std::vector<Face*> faces)
{
  for (const auto& face : faces) {
    VALUE points = rb_ary_new_capa(static_cast<long>(vertices->size()));
    for (const auto& vertex : face->vertices()) {
      // This ends up creating a new Ruby point every time.
      VALUE point = GetRubyVALUE(vertex->position());
      rb_ary_push(points, point);
    }
    // builder.add_face(point) ...
  }
}
```

Similar to the optimization maximization described for {Sketchup::EntitiesBuilder} you might find that avoiding unnecessarily creating new Ruby objects can yield some performance benefits. Below is an example of one way of doing that:

```cpp
!!!cpp
#include <algorithm>
#include <unordered_map>
#include <vector>

void generate(std::vector<Face*> faces)
{
  // In some cases it might make sense to create all the unique the Ruby objects
  // up front to reduce the overhead.
  VALUE keep_alive = rb_ary_new_capa(static_cast<long>(vertices->size()));
  std::unordered_map<Vertex*, VALUE> ruby_points;
  for (const auto& vertex : vertices) {
    VALUE point = GetRubyVALUE(vertex->position());
    ruby_points[vertex] = point;
    // Ruby will protect VALUE object in the stack from the garbage collection.
    // VALUE objects in an unordered_map is on the stack so it's not protected.
    // Because of this we need to protect them by using a temporary array.
    rb_ary_push(keep_alive, point);
  }

  for (const auto& face : faces) {
    VALUE points = rb_ary_new_capa(static_cast<long>(vertices->size()));
    for (const auto& vertex : face->vertices()) {
      VALUE point = ruby_points[vertex];
      rb_ary_push(points, point);
    }
    // builder.add_face(point) ...
  }
}
```
