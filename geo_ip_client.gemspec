# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'geo_ip_client/version'

Gem::Specification.new do |gem|
  gem.name          = "geo_ip_client"
  gem.version       = GeoIpClient::VERSION
  gem.authors       = ["Enrico Carlesso"]
  gem.email         = ["enricocarlesso@gmail.com"]
  gem.description   = "A simple gem to be used in combination with https://github.com/carlesso/RubyGeoIp"
  gem.summary       = "Client for RubyGeoIp Project"
  gem.homepage      = "https://github.com/carlesso/geo_ip_client"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "json"
end
