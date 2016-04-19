# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'catApiTest/version'

Gem::Specification.new do |spec|
  spec.name          = "catApiTest"
  spec.version       = CatApiTest::VERSION
  spec.authors       = ["Fredy KONIG"]
  spec.email         = ["fredy@konigTechnologies.co.uk"]
  spec.summary       = %q{TODO: Command line for cat lovers.}
  spec.description   = %q{TODO: Command line for cat lovers. it displays cat images or cat facts .}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
