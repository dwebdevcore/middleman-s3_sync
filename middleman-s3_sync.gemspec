# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'middleman-s3_sync/version'

Gem::Specification.new do |gem|
  gem.name          = "middleman-s3_sync"
  gem.version       = Middleman::S3Sync::VERSION
  gem.authors       = ["Frederic Jean"]
  gem.email         = ["fred@fredjean.net"]
  gem.description   = %q{Only syncs files that have been updated to S3.}
  gem.summary       = %q{Tries really, really hard not to push files to S3.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'middleman-core', '>= 3.0.0'
  gem.add_runtime_dependency 'fog'
end
