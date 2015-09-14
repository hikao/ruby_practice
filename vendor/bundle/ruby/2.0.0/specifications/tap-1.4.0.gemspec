# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "tap"
  s.version = "1.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Simon Chiang"]
  s.date = "2011-01-09"
  s.email = "simon.a.chiang@gmail.com"
  s.executables = ["tap"]
  s.extra_rdoc_files = ["README", "MIT-LICENSE", "History", "doc/API", "doc/Workflow Syntax", "doc/Ruby to Ruby", "doc/Examples/Command Line", "doc/Examples/Tapfile", "doc/Configuration"]
  s.files = ["bin/tap", "README", "MIT-LICENSE", "History", "doc/API", "doc/Workflow Syntax", "doc/Ruby to Ruby", "doc/Examples/Command Line", "doc/Examples/Tapfile", "doc/Configuration"]
  s.homepage = "http://tap.rubyforge.org"
  s.rdoc_options = ["--main", "README", "-S", "-N", "--title", "Tap (Task Application)"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "tap"
  s.rubygems_version = "2.0.14"
  s.summary = "A configurable, distributable workflow framework."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<configurable>, ["~> 0.7.0"])
      s.add_development_dependency(%q<tap-test>, ["~> 0.7.0"])
    else
      s.add_dependency(%q<configurable>, ["~> 0.7.0"])
      s.add_dependency(%q<tap-test>, ["~> 0.7.0"])
    end
  else
    s.add_dependency(%q<configurable>, ["~> 0.7.0"])
    s.add_dependency(%q<tap-test>, ["~> 0.7.0"])
  end
end
