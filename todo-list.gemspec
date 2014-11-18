# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'todo/list/version'

Gem::Specification.new do |spec|
  spec.name          = "todo-list"
  spec.version       = Todo::List::VERSION
  spec.authors       = ["windstill"]
  spec.email         = ["202070317@163.com"]
  spec.summary       = %q{A command line tool of todo list.}
  spec.description   = %q{A command line tool of todo list.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  
  spec.add_development_dependency "gli"
  spec.add_development_dependency "hacer"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
