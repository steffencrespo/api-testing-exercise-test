# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'api/testing/exercise/test/version'

Gem::Specification.new do |spec|
  spec.name          = "api-testing-exercise-test"
  spec.version       = Api::Testing::Exercise::Test::VERSION
  spec.authors       = ["TODO: Write your name"]
  spec.email         = ["steffencrespo@hotmail.com"]
  spec.summary       = %q{TODO: Write a short summary. Required.}
  spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end

gem.add_development_dependency 'rspec'
gem.add_development_dependency 'rake'