$:.push File.expand_path("../lib", __FILE__)
require 'truthiness/version'

Gem::Specification.new do |s|
  s.name        = "truthiness"
  s.version     = Truthiness::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jon Karna"]
  s.email       = ["ipg49vv2@gmail.com"]
  s.homepage    = "https://github.com/jonkarna/truthiness"
  s.summary     = %q{I want the truth!!!}
  s.description = %q{Evaluate the truthiness of an object without getting out
                     the logical expressions}

  s.rubyforge_project = "truthiness"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
