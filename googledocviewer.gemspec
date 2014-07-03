# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'googledocviewer/version'

Gem::Specification.new do |spec|
  spec.name          = "googledocviewer"
  spec.version       = Googledocviewer::VERSION
  spec.authors       = ["Taylor Mitchell"]
  spec.email         = ["scy0846@gmail.com"]
  spec.summary       = %q{Embeds Google Document Viewer in your site}
  spec.description   = %q{Supports: PDF, DOC, DOCX, PPT, and TIFF}
  spec.homepage      = "https://github.com/scy0846/googledocviewer"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "jquery-rails"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
