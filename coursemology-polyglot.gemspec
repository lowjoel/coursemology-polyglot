# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'coursemology/polyglot/version'

Gem::Specification.new do |spec|
  spec.name          = 'coursemology-polyglot'
  spec.version       = Coursemology::Polyglot::VERSION
  spec.authors       = ['Joel Low']
  spec.email         = ['joel@joelsplace.sg']
  spec.license       = 'MIT'

  spec.summary       = 'Coursemology polyglot definitions'
  spec.description   = <<-DESC
Common definitions shared between the web application and the evaluator for determining the
programming languages supported in Coursemology.
  DESC
  spec.homepage      = 'http://coursemology.org'
  spec.files         = `git ls-files -z`.split("\x0").
                       reject { |f| f.match(/^(test|spec|features)\//) }
  spec.executables   = spec.files.grep(/^bin\//) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'coveralls'
  spec.add_development_dependency 'codeclimate-test-reporter'
end