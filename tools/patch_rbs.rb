require 'fileutils'
require 'pathname'

root = File.expand_path('..', __dir__)
stubs = File.join(root, 'lib', 'sketchup-api-stubs', 'stubs')
rbs_path = File.join(root, 'sig')

signatures_file = File.join(rbs_path, 'sketchup.rbs')

content = File.read(signatures_file)

content.gsub!(/^class Array$/, 'class Array[unchecked out Elem] < Object')
# TODO: Infer a type.
content.gsub!(/include Enumerable$/, 'include Enumerable[untyped]')

File.write(signatures_file, content)
