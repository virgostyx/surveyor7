require_relative "lib/surveyor/version"

Gem::Specification.new do |spec|
  spec.name        = "surveyor7"
  spec.version     = Surveyor::VERSION
  spec.authors     = ["virgostyx"]
  spec.email       = ["virgostyx@gmail.com"]
  spec.homepage    = %q{https://github.com/virgostyx/surveyor-rails}
  spec.summary     = %q{A rails (gem) plugin to enable surveys in your application}
  spec.post_install_message = %q{Thanks for using surveyor7! Remember to run the surveyor generator and migrate your database, even if you are upgrading.}
  spec.description = spec.summary
  spec.license     = "MIT"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.test_files    = `git ls-files -- {test,spec}/*`.split("\n")
  spec.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 7.0.4.2"
  spec.add_dependency('haml', '~>6.1.1')
  spec.add_dependency('sassc', '~>2.4')
  spec.add_dependency('formtastic', '~> 4.0.0')
  spec.add_dependency('uuidtools', '~> 2.2')
  spec.add_dependency('mustache', '~> 1.1')
  spec.add_dependency('rabl', '~> 0.16')
  spec.add_development_dependency('yard', '~>0.9')
  spec.add_development_dependency('rake', '~>13.0')
  spec.add_development_dependency('sqlite3', '~>1.6')
  spec.add_development_dependency('bundler','~>2.4')
  spec.add_development_dependency('rspec-rails', '~> 6.0.1')
  spec.add_development_dependency('capybara', '~> 3.38')
  spec.add_development_dependency('launchy', '~> 2.5.2')
  spec.add_development_dependency('poltergeist', '~>1.18.0')
  spec.add_development_dependency('json_spec', '~> 1.1.1')
  spec.add_development_dependency('factory_girl', '~> 4.9.0')
  spec.add_development_dependency('database_cleaner', '~> 2.0.1')
  spec.add_development_dependency('rspec-retry', '~>0.6.2')
end
