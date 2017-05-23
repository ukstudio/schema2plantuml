# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'schema2plantuml/version'

Gem::Specification.new do |spec|
  spec.name          = "schema2plantuml"
  spec.version       = Schema2plantuml::VERSION
  spec.authors       = ["AKAMATSU Yuki"]
  spec.email         = ["y.akamatsu@ukstudio.jp"]

  spec.summary       = %q{Generate PlantUML from schema.rb}
  spec.description   = %q{Generate PlantUML from schema.rb}
  spec.homepage      = "https://github.com/ukstudio/schema2plantuml"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
