require 'fileutils'
require 'pathname'

root = File.expand_path('..', __dir__)
stubs = File.join(root, 'lib', 'sketchup-api-stubs', 'stubs')
rbs_path = File.join(root, 'rbs')

stubs_path = Pathname.new(stubs)

# TODO: Clear rbs directory.

pattern = "#{stubs}/**/*.rb"
Dir.glob(pattern) { |path|
  pathname = Pathname.new(path)
  relative_path = pathname.relative_path_from(stubs_path)

  puts relative_path

  output = File.join(rbs_path, relative_path.to_s)
  output << 's' # Make .rb to .rbs.

  output_path = File.dirname(output)
  FileUtils.mkdir_p(output_path)

  data = `rbs prototype rb #{pathname}`
  File.write(output, data)

  x = `rbs parse #{output}`
  puts x unless x.empty?
}
