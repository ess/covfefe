# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'covfefe/version'

Gem::Specification.new do |spec|
  spec.name          = "covfefe"
  spec.version       = Covfefe::VERSION
  spec.authors       = ["Ess"]
  spec.email         = ["pooster@gmail.com"]

  spec.summary       = %q{Ensure positive covfefe for your tests}
  spec.homepage      = "https://github.com/ess/covfefe"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'simplecov', '~> 0.14'
  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
