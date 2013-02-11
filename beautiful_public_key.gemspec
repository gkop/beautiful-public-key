# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.name          = "beautiful_public_key"
  gem.version       = "0.0.1"
  gem.authors       = ["Gabe Kopley"]
  gem.email         = ["gabe@coshx.com"]
  gem.description   = %q{Find a beautiful public key}
  gem.summary       = %q{Script repeatedly generates SSH keypairs until you find one whose public key randomart you like}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'sshkey', '1.4.0'
  gem.add_dependency 'highline'
end
