# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mini_racker/version"

Gem::Specification.new do |s|
  s.name        = "mini_racker"
  s.version     = MiniRacker::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Theresa A"]
  s.email       = ["the.resa@live.com"]
  s.homepage    = ""
  s.summary     = %q{A little gem for my middleware testings.}
  s.description = %q{Use a middleware to grant access for local ip adresses only.}

  s.rubyforge_project = "mini_racker"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
