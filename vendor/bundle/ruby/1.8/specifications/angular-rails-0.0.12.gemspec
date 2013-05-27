# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{angular-rails}
  s.version = "0.0.12"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nate Kidwell"]
  s.date = %q{2012-10-11}
  s.description = %q{Helpers for angularjs in a rails project (ripped from backbone-rails)}
  s.email = ["nate@ludicast.com"]
  s.files = ["lib/angular-rails/version.rb", "lib/angular-rails.rb", "lib/generators/angular/resource_helpers.rb", "lib/generators/angular/install/install_generator.rb", "lib/generators/angular/controller/templates/controller.coffee", "lib/generators/angular/controller/controller_generator.rb", "vendor/assets/javascripts/angular.min.js", "vendor/assets/javascripts/angular-resource.js", "vendor/assets/javascripts/angular-ie-compat.js", "vendor/assets/javascripts/angular-sanitize.min.js", "vendor/assets/javascripts/angular-resource.min.js", "vendor/assets/javascripts/angular.js", "vendor/assets/javascripts/angular-sanitize.js", "vendor/assets/javascripts/angle-up.js", "MIT-LICENSE", "Rakefile", "README.md", "test/tmp/app/assets/javascripts/application.js", "test/dummy/tmp/cache/assets/C89/210/sprockets%2F418a14e2c274ff430d7c7a0984674389", "test/dummy/tmp/cache/assets/DA0/0E0/sprockets%2Fecbfe6dc07211f12a7f6a243de68c598", "test/dummy/tmp/cache/assets/CE4/260/sprockets%2F1833b0fd8c294a4677c47df30b2928c5", "test/dummy/tmp/cache/assets/D9D/E10/sprockets%2Fd242e0caed4b59f17fcb7f32a3f85166", "test/dummy/tmp/cache/assets/E12/EC0/sprockets%2F0b5bd14cd0c3e0be2cfd134fc0752dde", "test/dummy/tmp/cache/assets/D43/6A0/sprockets%2Fb57422af8cc0d9bc269d96510e93f5d0", "test/dummy/log/test.log", "test/dummy/config.ru", "test/dummy/Rakefile", "test/dummy/config/initializers/secret_token.rb", "test/dummy/config/initializers/wrap_parameters.rb", "test/dummy/config/initializers/inflections.rb", "test/dummy/config/initializers/backtrace_silencers.rb", "test/dummy/config/initializers/mime_types.rb", "test/dummy/config/initializers/session_store.rb", "test/dummy/config/database.yml", "test/dummy/config/environments/development.rb", "test/dummy/config/environments/test.rb", "test/dummy/config/environments/production.rb", "test/dummy/config/boot.rb", "test/dummy/config/application.rb", "test/dummy/config/environment.rb", "test/dummy/config/locales/en.yml", "test/dummy/config/routes.rb", "test/dummy/script/rails", "test/dummy/app/helpers/application_helper.rb", "test/dummy/app/assets/stylesheets/application.css", "test/dummy/app/assets/javascripts/application.js", "test/dummy/app/views/layouts/application.html.erb", "test/dummy/app/controllers/application_controller.rb", "test/dummy/public/404.html", "test/dummy/public/422.html", "test/dummy/public/500.html", "test/dummy/public/favicon.ico", "test/test_helper.rb", "test/angular-rails_test.rb", "test/generators/controller_generator_test.rb", "test/generators/fixtures/application.js", "test/generators/generators_test_helper.rb", "test/generators/install_generator_test.rb"]
  s.homepage = %q{http://github.com/ludicast/angular-rails}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Helpers for angularjs in a rails project}
  s.test_files = ["test/tmp/app/assets/javascripts/application.js", "test/dummy/tmp/cache/assets/C89/210/sprockets%2F418a14e2c274ff430d7c7a0984674389", "test/dummy/tmp/cache/assets/DA0/0E0/sprockets%2Fecbfe6dc07211f12a7f6a243de68c598", "test/dummy/tmp/cache/assets/CE4/260/sprockets%2F1833b0fd8c294a4677c47df30b2928c5", "test/dummy/tmp/cache/assets/D9D/E10/sprockets%2Fd242e0caed4b59f17fcb7f32a3f85166", "test/dummy/tmp/cache/assets/E12/EC0/sprockets%2F0b5bd14cd0c3e0be2cfd134fc0752dde", "test/dummy/tmp/cache/assets/D43/6A0/sprockets%2Fb57422af8cc0d9bc269d96510e93f5d0", "test/dummy/log/test.log", "test/dummy/config.ru", "test/dummy/Rakefile", "test/dummy/config/initializers/secret_token.rb", "test/dummy/config/initializers/wrap_parameters.rb", "test/dummy/config/initializers/inflections.rb", "test/dummy/config/initializers/backtrace_silencers.rb", "test/dummy/config/initializers/mime_types.rb", "test/dummy/config/initializers/session_store.rb", "test/dummy/config/database.yml", "test/dummy/config/environments/development.rb", "test/dummy/config/environments/test.rb", "test/dummy/config/environments/production.rb", "test/dummy/config/boot.rb", "test/dummy/config/application.rb", "test/dummy/config/environment.rb", "test/dummy/config/locales/en.yml", "test/dummy/config/routes.rb", "test/dummy/script/rails", "test/dummy/app/helpers/application_helper.rb", "test/dummy/app/assets/stylesheets/application.css", "test/dummy/app/assets/javascripts/application.js", "test/dummy/app/views/layouts/application.html.erb", "test/dummy/app/controllers/application_controller.rb", "test/dummy/public/404.html", "test/dummy/public/422.html", "test/dummy/public/500.html", "test/dummy/public/favicon.ico", "test/test_helper.rb", "test/angular-rails_test.rb", "test/generators/controller_generator_test.rb", "test/generators/fixtures/application.js", "test/generators/generators_test_helper.rb", "test/generators/install_generator_test.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 0"])
      s.add_runtime_dependency(%q<coffee-script>, ["~> 2.2.0"])
    else
      s.add_dependency(%q<rails>, [">= 0"])
      s.add_dependency(%q<coffee-script>, ["~> 2.2.0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 0"])
    s.add_dependency(%q<coffee-script>, ["~> 2.2.0"])
  end
end
