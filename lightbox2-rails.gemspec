$:.push File.expand_path('../lib', __FILE__)
require 'lightbox2/rails/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'lightbox2-rails'
  s.version     = Lightbox2::Rails::VERSION
  s.authors     = ['Gavin Lam']
  s.email       = ['me@gavin.hk']
  s.homepage    = 'https://github.com/gavinkflam/lightbox2-rails'
  s.summary     = 'Lightbox2 for Rails asset pipeline'
  s.description = s.summary
  s.license     = 'MIT'

  s.add_dependency 'railties', '>= 3.1'

  s.files = Dir['{lib,public,vendor}/**/*', 'LICENSE', 'README.md']
  s.require_path = 'lib'
end
