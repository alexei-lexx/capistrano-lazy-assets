# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano-lazy-assets/version'

Gem::Specification.new do |gem|
  gem.name = 'capistrano-lazy-assets'
  gem.version = Capistrano::Lazy::Assets::VERSION
  gem.authors = ['Alexei Lexx']
  gem.email = ['alexei.lexx@gmail.com']
  gem.description = %q{Skipping asset pre-compilation if there are no changes}
  gem.summary = %q{Skipping asset pre-compilation if there are no changes}
  gem.homepage = 'https://github.com/alexei-lexx/capistrano-lazy-assets'

  gem.files = `git ls-files`.split($/)
  gem.executables = gem.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  gem.test_files = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_runtime_dependency 'capistrano'
end