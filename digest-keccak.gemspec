# frozen_string_literal: true

lib = File.expand_path('lib', __dir__).freeze
$LOAD_PATH.unshift lib unless $LOAD_PATH.include? lib

require 'digest/keccak/version'

Gem::Specification.new do |spec|
  spec.name     = 'digest-keccak'
  spec.version  = Digest::Keccak::VERSION
  spec.license  = 'MIT'
  spec.homepage = 'https://github.com/kotovalexarian/digest-keccak.rb'
  spec.summary  = 'The Keccak cryptographic hash function.'

  spec.required_ruby_version = '~> 2.2'

  spec.authors = ['Hongli Lai (Phusion)', 'Keccak authors']
  spec.email   = %w[software-signing@phusion.nl]

  spec.description = <<-DESCRIPTION.split.join ' '
    The Keccak (draft version of SHA-3) cryptographic hash function.
  DESCRIPTION

  spec.metadata = {
    'homepage_uri'    => 'https://github.com/kotovalexarian/digest-keccak.rb',
    'source_code_uri' => 'https://github.com/kotovalexarian/digest-keccak.rb',
    'bug_tracker_uri' =>
      'https://github.com/kotovalexarian/digest-keccak.rb/issues',
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

  spec.executables = spec.files.grep %r{^exe/}, &File.method(:basename)

  spec.extensions << 'ext/digest/extconf.rb'
end
