$:.push File.expand_path("../lib", __FILE__)
require "bb_oauth/version"

Gem::Specification.new do |s|
  s.name        = "bb_oauth"
  s.version     = BancoBrasilClientCredentials::VERSION
  s.platform    = Gem::Platform::RUBY
  s.homepage    = "https://github.com/ruby-banco-brasil/bb-oauth"
  s.metadata    = { "source_code_uri" => "https://github.com/ruby-banco-brasil/bb-oauth" }
  s.authors     = ["Rafael R. Aschoff"]
  s.email       = ["roque.rafael@gmail.com"]
  s.summary     = "A ruby wrapper for Banco do Brasil OAuth Client Credentials"
  s.description = "This gem maps to the BB Client Credentials"
  s.license     = "Unlicense"
  s.required_ruby_version = ">= 1.9"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'
  s.add_runtime_dependency 'json', '~> 2.1', '>= 2.1.0'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
