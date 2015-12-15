# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bitters/version'

Gem::Specification.new do |s|
  s.name          = 'bitters'
  s.version       = Bitters::VERSION
  s.authors       = ['Kyle Fiedler', 'Reda Lemeden', 'Tyson Gach', 'Will McMahan']
  s.email         = 'design+bourbon@thoughtbot.com'
  s.homepage      = 'http://bitters.bourbon.io'
  s.license       = 'MIT'
  s.summary       = 'Scaffold styles, variables and structure for Bourbon projects.'
  s.description = <<-DESC
Bitters helps designers start projects faster by defining a basic set of Sass
variables, default element style and project structure. It’s been specifically
designed for use within web applications. Bitters should live in your project’s
root Sass directory and we encourage you to modify and extend it to meet your
design and brand requirements.
  DESC
  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ['lib']

  s.add_development_dependency 'bundler', '~> 1.3'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'scss_lint', '~> 0.43'

  s.add_dependency 'bourbon', '>= 4.2'
  s.add_dependency 'sass', '>= 3.4'
  s.add_dependency 'thor'
end
