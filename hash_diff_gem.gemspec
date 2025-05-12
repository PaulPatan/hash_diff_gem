Gem::Specification.new do |s|
  s.name        = 'hash_diff_gem'
  s.version     = '0.0.1'
  s.summary     = 'Hash diff algorithm implementation'
  s.description = 'A simple gem that implements diff algorithm for Ruby hashes'
  s.authors     = ['Paul Patan']
  s.email       = 'paulpatan22@gmail.com'
  s.files       = Dir.glob('{lib,test}/**/*') + ['README.md', 'Gemfile', 'Rakefile']
  s.homepage    = 'https://github.com/PaulPatan/hash_diff_gem'
  s.license     = 'MIT'
  s.required_ruby_version = '>= 2.6.0'
  

  s.require_paths = ['lib']
  s.files = Dir['lib/**/*.rb'] + Dir['test/**/*.rb'] + ['README.md', 'Gemfile', 'Rakefile']
  
  s.add_development_dependency 'rake', '~> 13.0'
  s.add_development_dependency 'rspec', '~> 3.0'

end