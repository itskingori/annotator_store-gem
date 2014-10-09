$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'annotator_store/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'annotator_store'
  s.version     = AnnotatorStore::VERSION
  s.authors     = ['TODO: Your name']
  s.email       = ['TODO: Your email']
  s.homepage    = 'TODO'
  s.summary     = 'TODO: Summary of AnnotatorStore.'
  s.description = 'TODO: Description of AnnotatorStore.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']

  s.add_dependency 'rails', '~> 4.1.6'

  s.add_development_dependency 'pg'
end
