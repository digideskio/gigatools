# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gigatools/version'

Gem::Specification.new do |spec|
  spec.name          = "gigatools"
  spec.version       = Gigatools::VERSION
  spec.authors       = ["Joseph Hernandez"]
  spec.email         = ["joe@imjoe.co"]
  spec.summary       = "Unofficial Gigatools Gem"
  spec.description   = "A simple gem for integrating basic Gigatools user information"
  spec.homepage      = 'http://rubygems.org/gems/gigatools'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
