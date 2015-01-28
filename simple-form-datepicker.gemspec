# -*- encoding: utf-8 -*-

require File.expand_path('../lib/simple-form-datepicker/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "simple-form-datepicker"
  gem.version       = SimpleFormDatepicker::VERSION
  gem.summary       = %q{Datepicker inputs for SimpleForm.}
  gem.description   = %q{Datepicker inputs for SimpleForm.}
  gem.license       = "MIT"
  gem.authors       = ["Paul d'Hubert"]
  gem.email         = "paul@tymate.com"
  gem.homepage      = "https://rubygems.org/gems/simple-form-datepicker"
  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_development_dependency 'bundler', '~> 1.0'
  gem.add_development_dependency 'rake', '~> 0.8'
  gem.add_development_dependency 'rdoc', '~> 3.0'
  gem.add_development_dependency 'rspec', '~> 2.4'
  gem.add_development_dependency 'rubygems-tasks', '~> 0.2'

  gem.add_dependency 'simple_form'
end
