# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# This is the interface to a LayOut Connection Point. A
# {Layout::ConnectionPoint} defines a target point to which a {Layout::Label}
# or {Layout::LinearDimension} can connect.
#
# @example
#   doc = Layout::Document.open("C:/path/to/document.layout")
#   entity = doc.pages.first.entities.first
#   point = [2, 2]
#   # Create a Connection Point to LayOut Entity in the document
#   cp = Layout::ConnectionPoint.new(entity, point)
#   # If the entity is a [Layout::SketchUpModel], then we can use a 3D point
#   # in model space along with the PID of the entity in the model to make a
#   # deep connection.
#   point3D = [100, 200, 300]
#   pid = "1345"
#   cp2 = Layout::ConnectionPoint.new(entity, point3D, pid)
#   # This point can then be used to connect a label or linear dimension to
#   # the entity.
#   leader_type = Layout::Label::LEADER_LINE_TYPE_BEZIER
#   target_point = Geom::Point2d.new(1, 1)
#   bounds = Geom::Bounds2d.new(2, 1, 1, 1)
#   label = Layout::Label.new(text, leader_type, target_point, bounds)
#   label.connect(cp)
#
# @version LayOut 2018
class Layout::ConnectionPoint

  # Instance Methods

  # The {#initialize} method creates a new {Layout::ConnectionPoint}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   entity = doc.pages.first.entities.first
  #   point = [2, 2]
  #   # Create a Connection Point to LayOut Entity in the document
  #   cp = Layout::ConnectionPoint.new(entity, point)
  #
  # @overload initialize(entity, point, aperture = 0.0001)
  #
  #   @param [Layout::Entity] entity
  #   @param [Geom::Point2d] point The position on the entity to connect to.
  #   @param [Numeric] aperture The search radius to find the entity provided. If
  #     no aperture value is provided, a default value of 0.0001 will be used.
  #     The value provided must be greater than zero.
  #   @return [Layout::ConnectionPoint]
  #
  #   @raise [ArgumentError] if point passed in is not within the bounds of entity
  #   @raise [ArgumentError] if aperture is not greater than zero
  #   @raise [ArgumentError] if entity is not in a document
  #
  # @overload initialize(model, point3d, pid = nil)
  #
  #   @param [Layout::SketchUpModel] model
  #   @param [Geom::Point3d] point3d The 3D point in model space to connect to.
  #   @param [String, nil] pid The persistent ID of the entity to connect to in
  #     the model, if any.
  #   @return [Layout::ConnectionPoint]
  #
  #   @raise [ArgumentError] if entity is not in a document
  #   @raise [ArgumentError] if the provided pid does not exist in the model
  #
  # @version LayOut 2018
  def initialize(*args)
  end

end
