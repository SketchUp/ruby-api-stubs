require 'bundler/gem_tasks'
require 'yard'

YARD::Rake::YardocTask.new do |t|
  t.options << '--fail-on-warning'
end

task default: %i[
  yard
]
