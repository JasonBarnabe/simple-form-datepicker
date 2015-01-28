# encoding: utf-8

require 'rubygems'

begin
  require 'bundler'
rescue LoadError => e
  warn e.message
  warn "Run `gem install bundler` to install Bundler."
  exit -1
end

begin
  Bundler.setup(:development)
rescue Bundler::BundlerError => e
  warn e.message
  warn "Run `bundle install` to install missing gems."
  exit e.status_code
end

require 'rake'

require 'rubygems/tasks'

Gem::Tasks.new(:build => {:tar => true, :zip => true},
               :sign => {:checksum => true},
               :scm => {:push => true, :status => true, :tag => true}) do |tasks|
end

Gem::Tasks::Build::Gem.new
Gem::Tasks::SCM::Status.new
Gem::Tasks::SCM::Tag.new format: 'release-%s'
Gem::Tasks::Sign::Checksum.new
Gem::Tasks::Console.new

require 'rdoc/task'
RDoc::Task.new do |rdoc|
  rdoc.title = "simple-form-datepicker"
end
task :doc => :rdoc

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new


task :test    => :spec
task :default => :spec
