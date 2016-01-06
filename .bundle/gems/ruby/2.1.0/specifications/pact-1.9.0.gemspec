# -*- encoding: utf-8 -*-
# stub: pact 1.9.0 ruby lib

Gem::Specification.new do |s|
  s.name = "pact"
  s.version = "1.9.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["James Fraser", "Sergei Matheson", "Brent Snook", "Ronald Holshausen", "Beth Skurrie"]
  s.date = "2015-07-10"
  s.description = "Enables consumer driven contract testing, providing a mock service and DSL for the consumer project, and interaction playback and verification for the service provider project."
  s.email = ["james.fraser@alumni.swinburne.edu", "sergei.matheson@gmail.com", "brent@fuglylogic.com", "uglyog@gmail.com", "bskurrie@dius.com.au"]
  s.executables = ["pact"]
  s.files = ["bin/pact"]
  s.homepage = "https://github.com/realestate-com-au/pact"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Enables consumer driven contract testing, providing a mock service and DSL for the consumer project, and interaction playback and verification for the service provider project."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<randexp>, ["~> 0.1.7"])
      s.add_runtime_dependency(%q<rspec>, [">= 2.14"])
      s.add_runtime_dependency(%q<find_a_port>, ["~> 1.0.1"])
      s.add_runtime_dependency(%q<rack-test>, ["~> 0.6.2"])
      s.add_runtime_dependency(%q<awesome_print>, ["~> 1.1"])
      s.add_runtime_dependency(%q<thor>, [">= 0"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
      s.add_runtime_dependency(%q<webrick>, [">= 0"])
      s.add_runtime_dependency(%q<term-ansicolor>, ["~> 1.0"])
      s.add_runtime_dependency(%q<pact-support>, ["~> 0.5"])
      s.add_runtime_dependency(%q<pact-mock_service>, ["~> 0.7"])
      s.add_development_dependency(%q<rake>, ["~> 10.0.3"])
      s.add_development_dependency(%q<webmock>, ["~> 1.18.0"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<fakefs>, ["= 0.5"])
      s.add_development_dependency(%q<hashie>, ["~> 2.0"])
      s.add_development_dependency(%q<activesupport>, [">= 0"])
      s.add_development_dependency(%q<faraday>, [">= 0"])
      s.add_development_dependency(%q<appraisal>, [">= 0"])
    else
      s.add_dependency(%q<randexp>, ["~> 0.1.7"])
      s.add_dependency(%q<rspec>, [">= 2.14"])
      s.add_dependency(%q<find_a_port>, ["~> 1.0.1"])
      s.add_dependency(%q<rack-test>, ["~> 0.6.2"])
      s.add_dependency(%q<awesome_print>, ["~> 1.1"])
      s.add_dependency(%q<thor>, [">= 0"])
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<webrick>, [">= 0"])
      s.add_dependency(%q<term-ansicolor>, ["~> 1.0"])
      s.add_dependency(%q<pact-support>, ["~> 0.5"])
      s.add_dependency(%q<pact-mock_service>, ["~> 0.7"])
      s.add_dependency(%q<rake>, ["~> 10.0.3"])
      s.add_dependency(%q<webmock>, ["~> 1.18.0"])
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<fakefs>, ["= 0.5"])
      s.add_dependency(%q<hashie>, ["~> 2.0"])
      s.add_dependency(%q<activesupport>, [">= 0"])
      s.add_dependency(%q<faraday>, [">= 0"])
      s.add_dependency(%q<appraisal>, [">= 0"])
    end
  else
    s.add_dependency(%q<randexp>, ["~> 0.1.7"])
    s.add_dependency(%q<rspec>, [">= 2.14"])
    s.add_dependency(%q<find_a_port>, ["~> 1.0.1"])
    s.add_dependency(%q<rack-test>, ["~> 0.6.2"])
    s.add_dependency(%q<awesome_print>, ["~> 1.1"])
    s.add_dependency(%q<thor>, [">= 0"])
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<webrick>, [">= 0"])
    s.add_dependency(%q<term-ansicolor>, ["~> 1.0"])
    s.add_dependency(%q<pact-support>, ["~> 0.5"])
    s.add_dependency(%q<pact-mock_service>, ["~> 0.7"])
    s.add_dependency(%q<rake>, ["~> 10.0.3"])
    s.add_dependency(%q<webmock>, ["~> 1.18.0"])
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<fakefs>, ["= 0.5"])
    s.add_dependency(%q<hashie>, ["~> 2.0"])
    s.add_dependency(%q<activesupport>, [">= 0"])
    s.add_dependency(%q<faraday>, [">= 0"])
    s.add_dependency(%q<appraisal>, [">= 0"])
  end
end
