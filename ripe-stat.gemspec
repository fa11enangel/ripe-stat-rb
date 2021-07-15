require File.expand_path('../lib/ripe-stat/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = "ripe-stat"
  s.description = %q{A ruby library to interact with RIPEStat REST API}
  s.summary     = s.description
  s.version     = RipeStat::VERSION
  s.authors     = ["Konstantin Filtschew"]
  a.email       = ["konstantin@filtschew.de"]
  s.licenses    = ["MIT"]
  s.required_ruby_version = ">= 2.3"
  s.require_paths = ["lib"]
end
