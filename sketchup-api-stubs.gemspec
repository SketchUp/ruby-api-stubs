# coding: utf-8
Gem::Specification.new do |spec|
  spec.name          = 'sketchup-api-stubs'
  spec.version       = '0.2.0'
  spec.authors       = ['Trimble Inc, SketchUp Team']

  spec.summary       = %q{SketchUp Ruby API stubs.}
  spec.description   = %q{Stubs for the SketchUp Ruby API intended to assist IDEs.}
  spec.homepage      = 'https://github.com/SketchUp/ruby-api-stubs'
  spec.license       = 'MIT'

  spec.required_ruby_version = '>= 2.0'

  spec.files         = Dir.glob('Sketchup/**/*.rb')
  spec.require_paths = ['Sketchup']

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.0'
end
