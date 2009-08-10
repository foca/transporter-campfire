Gem::Specification.new do |s|
  s.name    = "transporter-campfire"
  s.version = "0.1"
  s.date    = "2009-08-10"

  s.description = "Deliver messages to your Campfire room"
  s.summary     = "Campfire adapter for Transporter"
  s.homepage    = "http://github.com/foca/Transporter"

  s.authors = ["Nicolás Sanguinetti"]
  s.email   = "contacto@nicolassanguinetti.info"

  s.require_paths     = ["lib"]
  s.rubyforge_project = "transporter"
  s.has_rdoc          = true
  s.rubygems_version  = "1.3.1"

  s.add_dependency "transporter"
  s.add_dependency "tinder"

  if s.respond_to?(:add_development_dependency)
    s.add_development_dependency "sr-mg"
  end

  s.files = %w[
.gitignore
LICENSE
README.rdoc
Rakefile
transporter-campfire.gemspec
lib/transporter/campfire.rb
]
end
