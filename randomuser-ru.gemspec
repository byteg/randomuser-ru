# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'randomuser-ru/version'

Gem::Specification.new do |gem|

  #-- author info
  gem.authors       = ['Denis Kuznetsov']
  gem.email         = ['denis@f7.ru']
  gem.homepage      = 'http://randomuser.ru'
  
  #-- gem info
  gem.name          = 'randomuser-ru'
  gem.version       = RandomuserRu::VERSION
  gem.license       = 'MIT'
  gem.summary       = %q{Access Russian Random User Generator API}
  gem.description   = %q{This gem returns simple JSON/hash responses from the Russian Random User Generator API.}

  gem.files         = `git ls-files`.split($/)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  #-- development dependencies
  gem.add_development_dependency 'minitest'
  gem.add_development_dependency 'bundler', '~> 1.3'
  gem.add_development_dependency 'rake'
end
