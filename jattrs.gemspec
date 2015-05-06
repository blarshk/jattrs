# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jattrs/version'

Gem::Specification.new do |spec|
  spec.name          = "jattrs"
  spec.version       = Jattrs::VERSION
  spec.authors       = ["Mitch Monsen", "Benjamin Kimball", "Michael Archibald", "Nathan Davis", "Jeffrey Thorup"]
  spec.email         = ["mmonsen7@gmail.com", "ben@creditera.com", "micharch54@gmail.com", "nbriardavis@gmail.com", "jthorup84@gmail.com"]
  spec.summary       = "Convert your json or hash fields into simple Ruby object attributes."
  spec.description   = "Simple module to enable JSON or Hash fields to behave like regular Ruby attributes."
  spec.homepage      = "https://github.com/blarshk/jattrs"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "minitest", "~> 5.1"
  spec.add_development_dependency "rake", "~> 10.0"
end
