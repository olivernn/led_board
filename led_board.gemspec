# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'led_board/version'

Gem::Specification.new do |spec|
  spec.name          = "led_board"
  spec.version       = LEDBoard::VERSION
  spec.authors       = ["Oliver Nightingale"]
  spec.email         = ["oliver.nightingale1@gmail.com"]
  spec.description   = %q{Gem to control the AM004 -03128/03127 LED Display Board}
  spec.summary       = %q{Gem to control the AM004 -03128/03127 LED Display Board}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "pi_wire", "> 0.0.2"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
