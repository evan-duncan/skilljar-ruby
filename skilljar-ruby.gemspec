# frozen_string_literal: true

require_relative 'lib/skilljar/version'

Gem::Specification.new do |spec|
  spec.name          = 'skilljar'
  spec.version       = Skilljar::VERSION
  spec.authors       = ['Evan Duncan']
  spec.email         = ['evan.e.duncan@gmail.com']

  spec.summary       = 'Skilljar API bindings for Ruby'
  spec.homepage      = 'https://github.com/evan-duncan/skilljar-ruby'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.0')

  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/evan-duncan/skilljar-ruby'
  spec.metadata['changelog_uri'] = 'https://github.com/evan-duncan/skilljar-ruby/blob/master/CHANGELOG.md'

  spec.files         = Dir['{lib}/**/*.rb', 'bin/*', 'LICENSE', '*.md']
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'prettier', '~> 0.18.2'
  spec.add_development_dependency 'rubocop', '~> 0.82.0'

  spec.add_runtime_dependency 'rest-client', '~> 2.1'
end
