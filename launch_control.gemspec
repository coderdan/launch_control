# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'launch_control/version'

Gem::Specification.new do |spec|
  spec.name          = "launch_control"
  spec.version       = LaunchControl::VERSION
  spec.authors       = ["Chris Teague"]
  spec.email         = ["chris@cteague.com.au"]

  spec.summary       = %q{Ensure that emails delivered to Mandrill meet a specified contract.}
  spec.homepage      = "https://flybeacon.com/"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "mandrill-api", "~> 1.0.53"
  spec.add_dependency "mustache", "~> 1.0"
  spec.add_dependency "reform", "~> 2.0.5"
  spec.add_dependency "activemodel", "~> 4.2.1"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
end
