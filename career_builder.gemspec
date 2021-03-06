# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{career_builder}
  s.version = "0.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Michael Guterl"]
  s.date = %q{2011-04-11}
  s.description = %q{Ruby wrapper for the CareerBuilder V2 HTTP XML API}
  s.email = %q{mguterl@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE",
    "README.md",
    "Rakefile",
    "VERSION",
    "career_builder.gemspec",
    "lib/career_builder.rb",
    "lib/career_builder/api/company.rb",
    "lib/career_builder/api/interest.rb",
    "lib/career_builder/api/job_type.rb",
    "lib/career_builder/api/language.rb",
    "lib/career_builder/api/location.rb",
    "lib/career_builder/api/pay.rb",
    "lib/career_builder/api/resume.rb",
    "lib/career_builder/api/resume_search.rb",
    "lib/career_builder/api/resume_search_result.rb",
    "lib/career_builder/api/school.rb",
    "lib/career_builder/api/shift_preference.rb",
    "lib/career_builder/api/word_document.rb",
    "lib/career_builder/client.rb",
    "lib/career_builder/client/advanced_resume_search.rb",
    "lib/career_builder/client/authentication.rb",
    "lib/career_builder/client/get_resume.rb",
    "lib/career_builder/client/request.rb",
    "lib/career_builder/client/resume_actions_remaining_today.rb",
    "lib/career_builder/errors.rb",
    "lib/career_builder/resume.rb",
    "lib/career_builder/resume/lazy_collection.rb",
    "spec/career_builder/client/advanced_resume_search_spec.rb",
    "spec/career_builder/client/authentication_spec.rb",
    "spec/career_builder/client/get_resume_spec.rb",
    "spec/career_builder/client/resume_actions_remaining_today_spec.rb",
    "spec/career_builder/client_spec.rb",
    "spec/career_builder/resume/lazy_collection_spec.rb",
    "spec/career_builder/resume_spec.rb",
    "spec/career_builder_spec.rb",
    "spec/spec.opts",
    "spec/spec_helper.rb",
    "spec/support/webmock.rb"
  ]
  s.homepage = %q{http://github.com/mguterl/career_builder}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Ruby wrapper for the CareerBuilder V2 API}
  s.test_files = [
    "spec/career_builder/client/advanced_resume_search_spec.rb",
    "spec/career_builder/client/authentication_spec.rb",
    "spec/career_builder/client/get_resume_spec.rb",
    "spec/career_builder/client/resume_actions_remaining_today_spec.rb",
    "spec/career_builder/client_spec.rb",
    "spec/career_builder/resume/lazy_collection_spec.rb",
    "spec/career_builder/resume_spec.rb",
    "spec/career_builder_spec.rb",
    "spec/spec_helper.rb",
    "spec/support/webmock.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 0"])
      s.add_runtime_dependency(%q<i18n>, [">= 0"])
      s.add_runtime_dependency(%q<nokogiri>, [">= 0"])
      s.add_runtime_dependency(%q<nokogiri-happymapper>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 1.3.0"])
      s.add_development_dependency(%q<webmock>, [">= 0"])
      s.add_runtime_dependency(%q<nokogiri-happymapper>, [">= 0"])
      s.add_runtime_dependency(%q<activesupport>, ["~> 2.3.5"])
    else
      s.add_dependency(%q<activesupport>, [">= 0"])
      s.add_dependency(%q<i18n>, [">= 0"])
      s.add_dependency(%q<nokogiri>, [">= 0"])
      s.add_dependency(%q<nokogiri-happymapper>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 1.3.0"])
      s.add_dependency(%q<webmock>, [">= 0"])
      s.add_dependency(%q<nokogiri-happymapper>, [">= 0"])
      s.add_dependency(%q<activesupport>, ["~> 2.3.5"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 0"])
    s.add_dependency(%q<i18n>, [">= 0"])
    s.add_dependency(%q<nokogiri>, [">= 0"])
    s.add_dependency(%q<nokogiri-happymapper>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 1.3.0"])
    s.add_dependency(%q<webmock>, [">= 0"])
    s.add_dependency(%q<nokogiri-happymapper>, [">= 0"])
    s.add_dependency(%q<activesupport>, ["~> 2.3.5"])
  end
end

