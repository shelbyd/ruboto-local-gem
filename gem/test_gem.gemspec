# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "test_gem/version"

Gem::Specification.new do |s|
  s.name        = "test_gem"
  s.version     = TestGem::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = [""]
  s.email       = [""]
  s.summary     = 'Some summary'

  s.add_development_dependency "rspec", "~>2.5.0"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
