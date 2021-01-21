# frozen_string_literal: true

lib = File.expand_path('lib', __dir__).freeze
$LOAD_PATH.unshift lib unless $LOAD_PATH.include? lib

require 'digest/keccak/version'

Gem::Specification.new do |spec|
  spec.name     = 'digest-keccak'
  spec.version  = Digest::Keccak::VERSION
  spec.license  = 'MIT'
  spec.homepage = 'https://github.com/kotovalexarian/digest-keccak'
  spec.summary  = 'The Keccak cryptographic hash function.'
  spec.platform = Gem::Platform::RUBY

  spec.required_ruby_version = '~> 2.2'

  spec.authors = ['Alex Kotov', 'Hongli Lai (Phusion)', 'Keccak authors']
  spec.email   = %w[kotovalexarian@gmail.com]

  spec.description = <<-DESCRIPTION.split.join ' '
    The Keccak (draft version of SHA-3) cryptographic hash function.
  DESCRIPTION

  spec.metadata = {
    'homepage_uri'    => 'https://github.com/kotovalexarian/digest-keccak',
    'source_code_uri' => 'https://github.com/kotovalexarian/digest-keccak',
    'bug_tracker_uri' =>
      'https://github.com/kotovalexarian/digest-keccak/issues',
  }.freeze

  spec.bindir        = 'exe'
  spec.require_paths = ['lib']

  spec.files = Dir[
    'README.md',
    'LICENSE',
    'Makefile',
    'digest-keccak.gemspec',
    'ext/**/*.{c,h,rb}',
    'lib/**/*',
  ]

  spec.test_files = spec.files.grep %r{^(test|spec|features)/}

  spec.executables = spec.files.grep %r{^exe/}, &File.method(:basename)

  spec.extensions << 'ext/digest/extconf.rb'

  spec.add_development_dependency 'bundler',             '~> 2.2'
  spec.add_development_dependency 'rake',                '~> 13.0'
  spec.add_development_dependency 'rubocop',             '~> 1.7'
  spec.add_development_dependency 'rubocop-performance', '~> 1.9'
end
