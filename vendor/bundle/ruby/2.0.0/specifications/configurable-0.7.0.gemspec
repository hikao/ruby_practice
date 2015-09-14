# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "configurable"
  s.version = "0.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Simon Chiang"]
  s.date = "2010-05-02"
  s.email = "simon.a.chiang@gmail.com"
  s.extra_rdoc_files = ["MIT-LICENSE", "README", "History"]
  s.files = ["MIT-LICENSE", "README", "History"]
  s.homepage = "http://tap.rubyforge.org/configurable"
  s.rdoc_options = ["--main", "README", "-S", "-N", "--title", "Configurable"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "tap"
  s.rubygems_version = "2.0.14"
  s.summary = "configurable"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<lazydoc>, [">= 1.0.0"])
    else
      s.add_dependency(%q<lazydoc>, [">= 1.0.0"])
    end
  else
    s.add_dependency(%q<lazydoc>, [">= 1.0.0"])
  end
end
