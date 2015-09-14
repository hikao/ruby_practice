# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "lazydoc"
  s.version = "1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Simon Chiang"]
  s.date = "2009-12-05"
  s.email = "simon.a.chiang@gmail.com"
  s.extra_rdoc_files = ["README", "MIT-LICENSE", "History"]
  s.files = ["README", "MIT-LICENSE", "History"]
  s.homepage = "http://tap.rubyforge.org/lazydoc"
  s.rdoc_options = ["--title", "Lazydoc", "--main", "README", "--line-numbers", "--inline-source"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "tap"
  s.rubygems_version = "2.0.14"
  s.summary = "Lazily pull documentation out of source files."
end
