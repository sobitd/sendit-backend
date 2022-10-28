# -*- encoding: utf-8 -*-
# stub: truemail 2.7.5 ruby lib

Gem::Specification.new do |s|
  s.name = "truemail".freeze
  s.version = "2.7.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/truemail-rb/truemail/issues", "changelog_uri" => "https://github.com/truemail-rb/truemail/blob/master/CHANGELOG.md", "documentation_uri" => "https://truemail-rb.org/truemail-gem", "homepage_uri" => "https://truemail-rb.org", "source_code_uri" => "https://github.com/truemail-rb/truemail" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Vladislav Trotsenko".freeze]
  s.bindir = "exe".freeze
  s.date = "2022-10-10"
  s.description = "Configurable framework agnostic plain Ruby email validator. Verify email via Regex, DNS, SMTP and even more.".freeze
  s.email = ["admin@bestweb.com.ua".freeze]
  s.homepage = "https://github.com/truemail-rb/truemail".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.5.0".freeze)
  s.rubygems_version = "3.3.24".freeze
  s.summary = "truemail".freeze

  s.installed_by_version = "3.3.24" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<simpleidn>.freeze, ["~> 0.2.1"])
    s.add_development_dependency(%q<dns_mock>.freeze, ["~> 1.5", ">= 1.5.5"])
    s.add_development_dependency(%q<ffaker>.freeze, ["~> 2.21"])
    s.add_development_dependency(%q<json_matchers>.freeze, ["~> 0.11.1"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 13.0", ">= 13.0.6"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.11"])
    s.add_development_dependency(%q<smtp_mock>.freeze, ["~> 1.2", ">= 1.2.2"])
    s.add_development_dependency(%q<truemail-rspec>.freeze, ["~> 0.9.2"])
    s.add_development_dependency(%q<webmock>.freeze, ["~> 3.18", ">= 3.18.1"])
  else
    s.add_dependency(%q<simpleidn>.freeze, ["~> 0.2.1"])
    s.add_dependency(%q<dns_mock>.freeze, ["~> 1.5", ">= 1.5.5"])
    s.add_dependency(%q<ffaker>.freeze, ["~> 2.21"])
    s.add_dependency(%q<json_matchers>.freeze, ["~> 0.11.1"])
    s.add_dependency(%q<rake>.freeze, ["~> 13.0", ">= 13.0.6"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.11"])
    s.add_dependency(%q<smtp_mock>.freeze, ["~> 1.2", ">= 1.2.2"])
    s.add_dependency(%q<truemail-rspec>.freeze, ["~> 0.9.2"])
    s.add_dependency(%q<webmock>.freeze, ["~> 3.18", ">= 3.18.1"])
  end
end
