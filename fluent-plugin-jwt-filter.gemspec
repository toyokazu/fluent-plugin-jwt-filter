# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-jwt-filter"
  spec.version       = "0.1.0"
  spec.authors       = ["Toyokazu Akiyama"]
  spec.email         = ["toyokazu@gmail.com"]

  spec.summary       = %q{Fluent Filter plugin for encrypting and decrypting messages using JSON Web Token technology (JSON Web Encryption, JSON Web Signature and JSON Web Key)}
  spec.description   = %q{Fluent Filter plugin for encrypting and decrypting messages using JSON Web Token technology (JSON Web Encryption, JSON Web Signature and JSON Web Key)}
  spec.homepage      = "https://github.com/toyokazu/fluent-plugin-jwt-filter"
  spec.license       = "Apache License Version 2.0"

  spec.files         = `git ls-files`.gsub(/images\/[\w\.]+\n/, "").split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.2.0'


  spec.add_dependency 'fluentd', '~> 0.14.0'
  spec.add_runtime_dependency 'json-jwt', '>= 1.7.1'

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 12.0'
  spec.add_development_dependency 'test-unit'
end
