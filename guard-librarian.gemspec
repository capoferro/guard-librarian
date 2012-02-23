# -*- encoding: utf-8 -*-

$:.push File.expand_path("../lib", __FILE__)
require "guard/librarian/version"

Gem::Specification.new do |s|
  s.name = "guard-librarian"
  s.version = Guard::Librarian::VERSION
  s.authors = ["Josiah Kiehl"]
  s.email = ["josiah@bluepojo.com"]
  s.homepage = "http://github.com/bluepojo/guard-librarian"
  s.summary = "Guard plugin for Librarian"
  s.description = "Guard plugin for Librarian to trigger cookbook dependency resolution."

  s.required_ruby_version = '~> 1.9.2'
  s.add_dependency 'guard', '>= 1.0.0'
  s.add_dependency 'librarian', '~> 0.0.14'

  s.files = Dir.glob('{lib}/**/*') + %w[LICENSE README]
  s.require_paths = ["lib"]
end
