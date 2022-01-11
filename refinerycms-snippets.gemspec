# Encoding: UTF-8

Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-snippets'
  s.version           = '1.0'
  s.description       = 'Ruby on Rails Snippets extension for Refinery CMS'
  s.date              = '2021-03-29'
  s.summary           = 'Snippets extension for Refinery CMS'
  s.authors           = 'Robert Marcelino'
  s.require_paths     = %w(lib)
  s.files             = Dir["{app,config,db,lib}/**/*"] + ["readme.md"]

  # Runtime dependencies
  s.add_dependency             'refinerycms-core',    '~> 3.0.6'
  s.add_dependency             'acts_as_indexed',     '~> 0.8.0'
  s.add_dependency             'friendly_id'
  # Development dependencies (usually used for testing)
  s.add_development_dependency 'refinerycms-testing', '~> 3.0.6'
end
