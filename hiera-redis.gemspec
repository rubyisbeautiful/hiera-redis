$:.unshift File.expand_path('../lib', __FILE__)
require 'hiera/backend/redis_backend'

Gem::Specification.new do |s|
  s.version = Hiera::Backend::Redis_backend::VERSION
  s.name = 'hiera-redis'
  s.email = 'bcptaylor@gmail.com'
  s.authors = 'Bryan Taylor, Adam Kosmin c/o Reliant Security, Inc.'
  s.summary = 'A Redis backend for Hiera.'
  s.description = 'Allows hiera functions to pull data from a Redis database'
  s.has_rdoc = false
  s.homepage = 'https://github.com/rubyisbeautiful/hiera-redis'
  s.license = 'MIT'
  s.add_dependency 'hiera', '~> 1.0'
  s.files = Dir['lib/**/*.rb']
  s.files += ['LICENSE.txt']
end
