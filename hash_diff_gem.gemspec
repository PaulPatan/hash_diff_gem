# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name        = 'hash_diff_gem'
  s.version     = '0.0.2'
  s.summary     = 'Hash diff algorithm implementation'
  s.description = 'A simple gem that implements diff algorithm for Ruby hashes'
  s.authors     = ['Paul Patan']
  s.email       = 'paulpatan22@gmail.com'
  s.files       = Dir.glob('{lib,test}/**/*') + ['README.md', 'Gemfile', 'Rakefile']
  s.homepage    = 'https://github.com/PaulPatan/hash_diff_gem'
  s.license     = 'MIT'
  s.required_ruby_version = '>= 2.6.0'

  s.require_paths = ['lib']
  s.metadata = {
    'rubygems_mfa_required' => 'true'
  }
end
