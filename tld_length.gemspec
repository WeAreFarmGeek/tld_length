# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tld_length/version'

Gem::Specification.new do |spec|
  spec.name          = "tld_length"
  spec.version       = TldLength::VERSION
  spec.authors       = ["John Hamelink"]
  spec.email         = ["hello@farmer.io"]
  spec.summary       = %q{Handle subdomains on xip.io / nip.io domains using a rack middleware}
  spec.homepage      = "https://github.com/WeAreFarmGeek/tld_length"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
