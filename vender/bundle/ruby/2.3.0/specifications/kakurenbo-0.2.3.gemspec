# -*- encoding: utf-8 -*-
# stub: kakurenbo 0.2.3 ruby lib

Gem::Specification.new do |s|
  s.name = "kakurenbo".freeze
  s.version = "0.2.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["alfa-jpn".freeze]
  s.date = "2015-02-01"
  s.description = "    provides soft delete.\n    Kakurenbo is a re-implementation of paranoia and acts_as_paranoid for Rails4 and 3.\n    implemented a function that other gems are not enough.\n\n    The usage of the Kakurenbo is very very very simple. Only add `deleted_at`(datetime) to column.\n    Of course you can use `acts_as_paranoid`.In addition, Kakurenbo has many advantageous.\n".freeze
  s.email = ["a.nkmr.ja@gmail.com".freeze]
  s.homepage = "https://github.com/alfa-jpn/kakurenbo".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.5.2".freeze
  s.summary = "provides soft delete. Kakurenbo is a re-implementation of paranoia and acts_as_paranoid for Rails4. implemented a function that other gems are not enough.".freeze

  s.installed_by_version = "2.5.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.5"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 3.0.0"])
      s.add_development_dependency(%q<yard>.freeze, [">= 0"])
      s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<activerecord>.freeze, [">= 4.0.2"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.5"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 3.0.0"])
      s.add_dependency(%q<yard>.freeze, [">= 0"])
      s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_dependency(%q<activerecord>.freeze, [">= 4.0.2"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.5"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 3.0.0"])
    s.add_dependency(%q<yard>.freeze, [">= 0"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_dependency(%q<activerecord>.freeze, [">= 4.0.2"])
  end
end
