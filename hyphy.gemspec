# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "hyphy"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["David Huie"]
  s.date = "2013-07-30"
  s.description = "Identify SQL bottlenecks in tests"
  s.email = "david@nationbuilder.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".document",
    ".rspec",
    ".ruby-gemset",
    ".ruby-version",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "hyphy.gemspec",
    "lib/hyphy.rb",
    "lib/hyphy/filters/abstract_filter.rb",
    "lib/hyphy/filters/benchmark_filter.rb",
    "lib/hyphy/filters/duration_filter.rb",
    "lib/hyphy/filters/limit_filter.rb",
    "lib/hyphy/filters/sql_filter.rb",
    "lib/hyphy/orm_adapters/abstract_orm_adapter.rb",
    "lib/hyphy/orm_adapters/activerecord_adapter.rb",
    "lib/hyphy/sampler.rb",
    "lib/hyphy/sql_statement.rb",
    "spec/filters/abstract_filter_spec.rb",
    "spec/filters/benchmark_filter_spec.rb",
    "spec/filters/duration_filter_spec.rb",
    "spec/filters/limit_filter_spec.rb",
    "spec/filters/sql_filter_spec.rb",
    "spec/models/sql_statement_spec.rb",
    "spec/orm_adapters/activerecord_orm_adapter_spec.rb",
    "spec/sampler_spec.rb",
    "spec/spec_helper.rb",
    "specification.txt"
  ]
  s.homepage = "http://github.com/3dna/hyphy"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.25"
  s.summary = "Identify SQL bottlenecks in tests"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, ["~> 3.2"])
      s.add_runtime_dependency(%q<activerecord>, ["~> 3.2"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<pry-nav>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
    else
      s.add_dependency(%q<activesupport>, ["~> 3.2"])
      s.add_dependency(%q<activerecord>, ["~> 3.2"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<pry-nav>, [">= 0"])
      s.add_dependency(%q<rdoc>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
    end
  else
    s.add_dependency(%q<activesupport>, ["~> 3.2"])
    s.add_dependency(%q<activerecord>, ["~> 3.2"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<pry-nav>, [">= 0"])
    s.add_dependency(%q<rdoc>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
  end
end

