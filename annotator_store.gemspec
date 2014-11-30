$:.push File.expand_path('../lib', __FILE__)
require 'annotator_store/version'

Gem::Specification.new do |spec|
  spec.name           = 'annotator-store'
  spec.version        = AnnotatorStore::VERSION
  spec.date           = Time.new.getutc.strftime('%Y-%m-%d')
  spec.authors        = ["Job King'ori Maina"]
  spec.email          = ['j@kingori.co']
  spec.homepage       = 'http://itsmrwave.github.io/annotator-store'
  spec.summary        = 'Rails engine to implement a Ruby backend store implementation for Annotator.'
  spec.description    = 'Rails engine to implement a Ruby backend store implementation for Annotator, an open-source JavaScript library to easily add annotation functionality to any webpage.'
  spec.license        = 'MIT'

  spec.files          = Dir['{app,config,db,lib}/**/*', 'LICENSE.md', 'Rakefile', 'README.md']
  spec.require_paths  = ['lib']

  spec.required_ruby_version = '>= 1.9.3'

  spec.add_development_dependency 'pg'
  spec.add_development_dependency 'appraisal'
  spec.add_development_dependency 'database_cleaner'
  spec.add_development_dependency 'factory_girl_rails'
  spec.add_development_dependency 'faker'
  spec.add_development_dependency 'json-schema'
  spec.add_development_dependency 'rspec-rails'

  spec.add_runtime_dependency 'jbuilder'
  spec.add_runtime_dependency 'rails', '>= 3.2'
end
