# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "adjectifier/version"

Gem::Specification.new do |s|
  s.name        = "adjectifier"
  s.version     = Adjectifier::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Frankie Roberto"]
  s.email       = ["frankie@frankieroberto.com"]
  s.homepage    = "http://www.frankieroberto.com"
  s.summary     = %q{Extracts 'adjectives' from free text}
  s.description = %q{The aim of this gem is to simply extract adjectives, or 'describing words' from arbitrary free text.}

  s.rubyforge_project = "adjectifier"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
