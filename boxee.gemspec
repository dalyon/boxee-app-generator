Gem::Specification.new do |s|
  s.name = %q{boxee}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Robert Evans"]
  s.date = %q{2009-06-01}
  s.description = %q{A generator for building boxee applications}
  s.email = %q{Your Email Address}
  s.executables = ["boxee"]
  s.extra_rdoc_files = ["README.textile", "ChangeLog.rdoc", "LICENSE"]
  s.files = ["README.textile", "LICENSE", "ChangeLog.rdoc", "Rakefile", "bin/boxee", "lib/boxee.rb", "lib/boxee/options.rb", 'lib/boxee/generate.rb']
  s.has_rdoc = true
  s.homepage = %q{http://www.facollective.com}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{boxee}
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{A generator for building boxee applications}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
    else
    end
  else
  end
end
