# frozen_string_literal: true

require_relative "lib/aztec-decoder/version"

Gem::Specification.new do |spec|
  spec.name = "aztec-decoder"
  spec.version = AZTecDecoder::VERSION
  spec.authors = ["Bartosz Wójcik"]
  spec.email = ["support@pelock.com"]
  spec.summary = "AZTEC 2D decoder Web API Ruby SDK (Polish vehicle registration certificates)"
  spec.homepage = "https://www.pelock.com/pl/produkty/dekoder-aztec"
  spec.license = "Apache-2.0"
  spec.required_ruby_version = ">= 2.7.0"
  spec.files = Dir["lib/**/*", "LICENSE", "README.md"]
  spec.require_paths = ["lib"]
  spec.metadata = {
    "homepage_uri" => spec.homepage,
    "source_code_uri" => "https://github.com/PELock/Dekoder-AZTEC-2D-Ruby",
    "bug_tracker_uri" => "https://www.pelock.com"
  }
end
