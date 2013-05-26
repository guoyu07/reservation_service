# encoding: utf-8

require 'rubygems'
require 'rake'

# require lib files
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'lib'))
require 'reservation_system'

# import external rake files
Dir.glob('tasks/*.rake').each { |r| import r }

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

task :default => :test
