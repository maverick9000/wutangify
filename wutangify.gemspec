# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wutangify/version'

Gem::Specification.new do |spec|
  spec.name          = "wutangify"
  spec.version       = Wutangify::VERSION
  spec.authors       = ["Maverick Stoklosa"]
  spec.email         = ["stoklomav@gmail.com"]
  spec.summary       = %q{Turn an ordinary name into a Wu-Tang Clan name.}
  spec.description   = %q{Sure you could keep the lame name your parents gave you but with the wutangify gem you don't have to.  You can use this gem to make some sweet ass user names to populate your website and whatnot.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "coveralls"
end
