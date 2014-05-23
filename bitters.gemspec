# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bitters/version'

Gem::Specification.new do |spec|
  spec.name          = "bitters"
  spec.version       = Bitters::VERSION
  spec.authors       = ["Kyle Fiedler", "Reda Lemeden"]
  spec.email         = ["support@thoughtbot.com"]
  spec.description   = "Base styles for Web design"
  spec.summary       = "Base styles for Web design"
  spec.homepage      = "http://github.com/thoughtbot/bitters"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'

  spec.add_dependency 'bourbon', '>= 3.2'
  spec.add_dependency 'sass', '>= 3.2'
  spec.add_dependency 'thor'
end
