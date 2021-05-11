require_relative 'lib/realiser/version'

Gem::Specification.new do |spec|
  spec.name        = 'realiser'
  spec.version     = Realiser::VERSION
  spec.authors     = ['Philip Lambok']
  spec.email       = ['philiplambok71@gmail.com']
  spec.homepage    = 'https://github.com/philiplambok/realiser'
  spec.summary     = 'The Rails engine will help you to provides the setting data to your app'
  spec.description = 'Rails engine that you can use when you need dynamic setting data to your app'
  spec.license     = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/philiplambok/realiser"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.add_dependency 'rails', '~> 6.1.3', '>= 6.1.3.2'
end
