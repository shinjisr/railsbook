# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec| # what is this?
  spec.gothonweb     = "gothonweb"
  spec.version       = '1.0'
  spec.authors       = ["Steven Chang"]
  spec.email         = ["stevencch99@gmail.com"]
  spec.summary       = %q{Short summary of your project}
  spec.description   = %q{Longer description of your project.}
  spec.homepage      = "http://domainforproject.com/"
  spec.license       = "MIT"

  spec.files         = ['lib/gothonweb.rb']
  spec.executables   = ['bin/gothonweb']
  spec.test_files    = ['tests/test_gothonweb.rb']
  spec.require_paths = ["lib"]
end
