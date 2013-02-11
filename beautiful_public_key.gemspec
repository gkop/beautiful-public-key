# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'beautiful_public_key/version'

Gem::Specification.new do |gem|
  gem.name          = "beautiful_public_key"
  gem.version       = BeautifulPublicKey::VERSION
  gem.authors       = ["Gabe Kopley"]
  gem.email         = ["gabe@coshx.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'sshkey', '1.4.0'
  gem.add_dependency 'highline'
end
