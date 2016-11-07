lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "bitters/version"

Gem::Specification.new do |s|
  s.add_development_dependency "bundler", "~> 1.3"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
  s.add_development_dependency "scss_lint", "~> 0.47"
  s.add_runtime_dependency "bourbon", "~> 5.0.0.beta.7"
  s.add_runtime_dependency "sass", "~> 3.4"
  s.add_runtime_dependency "thor", "~> 0.19"
  s.authors = [
    "Kyle Fiedler",
    "Reda Lemeden",
    "Tyson Gach",
    "Will McMahan",
  ]
  s.description = <<-DESC
    Bitters helps designers start projects faster by defining a basic set of
    Sass variables, default element style and project structure. It's been
    specifically designed for use within web applications. Bitters should live
    in your project's root Sass directory and we encourage you to modify and
    extend it to meet your design and brand requirements.
  DESC
  s.email = "design+bitters@thoughtbot.com"
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.files = `git ls-files`.split($/)
  s.homepage = "http://bitters.bourbon.io"
  s.license = "MIT"
  s.name = "bitters"
  s.require_paths = ["lib"]
  s.summary = <<-SUMMARY
    Scaffold styles, variables and structure for Bourbon projects.
  SUMMARY
  s.test_files = s.files.grep(%r{^(test|spec|features)/})
  s.version = Bitters::VERSION
end
