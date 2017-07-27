# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "MyShadesViewTool/version"

Gem::Specification.new do |spec|
  spec.name          = "MyShadesViewTool"
  spec.version       = MyShadesViewTool::VERSION
  spec.authors       = ["ahrobison"]
  spec.email         = ["ahrob27@gmail.com"]

  spec.summary       = %q{adds copyright info to application on Rails}
  spec.description   = %q{adds copyright info to application on Rails}
  spec.homepage      = "https://devcamp.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
