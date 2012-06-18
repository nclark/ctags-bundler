# -*- encoding: utf-8 -*-
require File.expand_path('../lib/ctags-bundler/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors     = ["Neal Clark"]
  gem.email       = ["nclark@thrownproject.com"]
  gem.description   = %q{Generate ctags for bundler projects}
  gem.summary       = %q{Generate ctags for bundler projects. Adapted from https://github.com/ivalkeen/guard-ctags-bundler}
  gem.homepage      = 'http://github.com/nclark/ctags-bundler'

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "ctags-bundler"
  gem.require_paths = ["lib"]
  gem.version       = Ctags::Bundler::VERSION
  
  gem.add_dependency 'bundler', '>= 1.0'
end
