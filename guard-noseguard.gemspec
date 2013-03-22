# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'guard/noseguard/version'

Gem::Specification.new do |gem|
  gem.name          = "guard-noseguard"
  gem.version       = Guard::NoseGuardVersion::VERSION
  gem.authors       = ["Thorsten Krüger"]
  gem.email         = ["thorstenkg@googlemail.com"]
  gem.description   = %q{Runs PyUnit tests through guard}
  gem.summary       = %q{If this suceeds, it can be used to have Guard watch for changes
in python files and execute corresponding tests}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
