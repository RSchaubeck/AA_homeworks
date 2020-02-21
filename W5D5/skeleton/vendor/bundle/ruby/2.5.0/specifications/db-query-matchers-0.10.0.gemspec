# -*- encoding: utf-8 -*-
# stub: db-query-matchers 0.10.0 ruby lib

Gem::Specification.new do |s|
  s.name = "db-query-matchers".freeze
  s.version = "0.10.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Brigade Engineering".freeze, "Henric Trotzig".freeze, "Joe Lencioni".freeze]
  s.date = "2019-09-26"
  s.email = ["eng@brigade.com".freeze, "henric.trotzig@brigade.com".freeze, "joe.lencioni@brigade.com".freeze]
  s.homepage = "https://github.com/brigade/db-query-matchers".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2".freeze)
  s.rubygems_version = "3.0.2".freeze
  s.summary = "RSpec matchers for database queries".freeze

  s.installed_by_version = "3.0.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>.freeze, [">= 4.0", "< 7"])
      s.add_runtime_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<activerecord>.freeze, [">= 4.0", "< 7"])
      s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_development_dependency(%q<appraisal>.freeze, ["~> 2.0"])
    else
      s.add_dependency(%q<activesupport>.freeze, [">= 4.0", "< 7"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<activerecord>.freeze, [">= 4.0", "< 7"])
      s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_dependency(%q<appraisal>.freeze, ["~> 2.0"])
    end
  else
    s.add_dependency(%q<activesupport>.freeze, [">= 4.0", "< 7"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<activerecord>.freeze, [">= 4.0", "< 7"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_dependency(%q<appraisal>.freeze, ["~> 2.0"])
  end
end
