# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{less}
  s.version = "2.3.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Charles Lowell"]
  s.date = %q{2013-04-16}
  s.default_executable = %q{lessc}
  s.description = %q{Invoke the Less CSS compiler from Ruby}
  s.email = ["cowboyd@thefrontside.net"]
  s.executables = ["lessc"]
  s.files = [".gitignore", ".gitmodules", ".travis.yml", "Gemfile", "README.md", "Rakefile", "bin/lessc", "less.gemspec", "lib/less.rb", "lib/less/defaults.rb", "lib/less/errors.rb", "lib/less/java_script.rb", "lib/less/java_script/rhino_context.rb", "lib/less/java_script/v8_context.rb", "lib/less/loader.rb", "lib/less/parser.rb", "lib/less/version.rb", "spec/less/faulty/faulty.less", "spec/less/loader_spec.rb", "spec/less/one/one.less", "spec/less/parser_spec.rb", "spec/less/some/some.css", "spec/less/some/some.less", "spec/less/two/two.less", "spec/spec_helper.rb", "lib/less/js/.gitignore", "lib/less/js/.npmignore", "lib/less/js/CHANGELOG.md", "lib/less/js/CONTRIBUTING.md", "lib/less/js/LICENSE", "lib/less/js/Makefile", "lib/less/js/README.md", "lib/less/js/benchmark/benchmark.less", "lib/less/js/benchmark/less-benchmark.js", "lib/less/js/bin/lessc", "lib/less/js/build/amd.js", "lib/less/js/build/ecma-5.js", "lib/less/js/build/header.js", "lib/less/js/build/require-rhino.js", "lib/less/js/build/require.js", "lib/less/js/dist/less-1.1.0.js", "lib/less/js/dist/less-1.1.0.min.js", "lib/less/js/dist/less-1.1.1.js", "lib/less/js/dist/less-1.1.1.min.js", "lib/less/js/dist/less-1.1.2.js", "lib/less/js/dist/less-1.1.2.min.js", "lib/less/js/dist/less-1.1.3.js", "lib/less/js/dist/less-1.1.3.min.js", "lib/less/js/dist/less-1.1.4.js", "lib/less/js/dist/less-1.1.4.min.js", "lib/less/js/dist/less-1.1.5.js", "lib/less/js/dist/less-1.1.5.min.js", "lib/less/js/dist/less-1.1.6.js", "lib/less/js/dist/less-1.1.6.min.js", "lib/less/js/dist/less-1.2.0.js", "lib/less/js/dist/less-1.2.0.min.js", "lib/less/js/dist/less-1.2.1.js", "lib/less/js/dist/less-1.2.1.min.js", "lib/less/js/dist/less-1.2.2.js", "lib/less/js/dist/less-1.2.2.min.js", "lib/less/js/dist/less-1.3.0.js", "lib/less/js/dist/less-1.3.0.min.js", "lib/less/js/dist/less-1.3.1.js", "lib/less/js/dist/less-1.3.1.min.js", "lib/less/js/dist/less-1.3.2.js", "lib/less/js/dist/less-1.3.2.min.js", "lib/less/js/dist/less-1.3.3.js", "lib/less/js/dist/less-1.3.3.min.js", "lib/less/js/dist/less-rhino-1.1.3.js", "lib/less/js/dist/less-rhino-1.1.5.js", "lib/less/js/dist/less-rhino-1.3.1.js", "lib/less/js/dist/less-rhino-1.3.2.js", "lib/less/js/dist/less-rhino-1.3.3.js", "lib/less/js/lib/less/browser.js", "lib/less/js/lib/less/colors.js", "lib/less/js/lib/less/functions.js", "lib/less/js/lib/less/index.js", "lib/less/js/lib/less/lessc_helper.js", "lib/less/js/lib/less/parser.js", "lib/less/js/lib/less/rhino.js", "lib/less/js/lib/less/tree.js", "lib/less/js/lib/less/tree/alpha.js", "lib/less/js/lib/less/tree/anonymous.js", "lib/less/js/lib/less/tree/assignment.js", "lib/less/js/lib/less/tree/call.js", "lib/less/js/lib/less/tree/color.js", "lib/less/js/lib/less/tree/comment.js", "lib/less/js/lib/less/tree/condition.js", "lib/less/js/lib/less/tree/dimension.js", "lib/less/js/lib/less/tree/directive.js", "lib/less/js/lib/less/tree/element.js", "lib/less/js/lib/less/tree/expression.js", "lib/less/js/lib/less/tree/import.js", "lib/less/js/lib/less/tree/javascript.js", "lib/less/js/lib/less/tree/keyword.js", "lib/less/js/lib/less/tree/media.js", "lib/less/js/lib/less/tree/mixin.js", "lib/less/js/lib/less/tree/operation.js", "lib/less/js/lib/less/tree/paren.js", "lib/less/js/lib/less/tree/quoted.js", "lib/less/js/lib/less/tree/ratio.js", "lib/less/js/lib/less/tree/rule.js", "lib/less/js/lib/less/tree/ruleset.js", "lib/less/js/lib/less/tree/selector.js", "lib/less/js/lib/less/tree/unicode-descriptor.js", "lib/less/js/lib/less/tree/url.js", "lib/less/js/lib/less/tree/value.js", "lib/less/js/lib/less/tree/variable.js", "lib/less/js/package.json", "lib/less/js/test/browser-test-prepare.js", "lib/less/js/test/browser/common.js", "lib/less/js/test/browser/css/relative-urls/urls.css", "lib/less/js/test/browser/css/rootpath-relative/urls.css", "lib/less/js/test/browser/css/rootpath/urls.css", "lib/less/js/test/browser/css/urls.css", "lib/less/js/test/browser/jasmine-html.js", "lib/less/js/test/browser/jasmine.css", "lib/less/js/test/browser/jasmine.js", "lib/less/js/test/browser/less/imports/urls.less", "lib/less/js/test/browser/less/imports/urls2.less", "lib/less/js/test/browser/less/relative-urls/urls.less", "lib/less/js/test/browser/less/rootpath-relative/urls.less", "lib/less/js/test/browser/less/rootpath/urls.less", "lib/less/js/test/browser/less/urls.less", "lib/less/js/test/browser/phantom-runner.js", "lib/less/js/test/browser/runner-browser.js", "lib/less/js/test/browser/runner-main.js", "lib/less/js/test/browser/runner-relative-urls.js", "lib/less/js/test/browser/runner-rootpath-relative.js", "lib/less/js/test/browser/runner-rootpath.js", "lib/less/js/test/browser/template.htm", "lib/less/js/test/css/charsets.css", "lib/less/js/test/css/colors.css", "lib/less/js/test/css/comments.css", "lib/less/js/test/css/css-3.css", "lib/less/js/test/css/css-escapes.css", "lib/less/js/test/css/css.css", "lib/less/js/test/css/debug/linenumbers-all.css", "lib/less/js/test/css/debug/linenumbers-comments.css", "lib/less/js/test/css/debug/linenumbers-mediaquery.css", "lib/less/js/test/css/functions.css", "lib/less/js/test/css/ie-filters.css", "lib/less/js/test/css/import-once.css", "lib/less/js/test/css/import.css", "lib/less/js/test/css/javascript.css", "lib/less/js/test/css/lazy-eval.css", "lib/less/js/test/css/media.css", "lib/less/js/test/css/mixins-args.css", "lib/less/js/test/css/mixins-closure.css", "lib/less/js/test/css/mixins-guards.css", "lib/less/js/test/css/mixins-important.css", "lib/less/js/test/css/mixins-named-args.css", "lib/less/js/test/css/mixins-nested.css", "lib/less/js/test/css/mixins-pattern.css", "lib/less/js/test/css/mixins.css", "lib/less/js/test/css/operations.css", "lib/less/js/test/css/parens.css", "lib/less/js/test/css/rulesets.css", "lib/less/js/test/css/scope.css", "lib/less/js/test/css/selectors.css", "lib/less/js/test/css/static-urls/urls.css", "lib/less/js/test/css/strings.css", "lib/less/js/test/css/urls.css", "lib/less/js/test/css/variables.css", "lib/less/js/test/css/whitespace.css", "lib/less/js/test/less-test.js", "lib/less/js/test/less/charsets.less", "lib/less/js/test/less/colors.less", "lib/less/js/test/less/comments.less", "lib/less/js/test/less/css-3.less", "lib/less/js/test/less/css-escapes.less", "lib/less/js/test/less/css.less", "lib/less/js/test/less/debug/import/test.less", "lib/less/js/test/less/debug/linenumbers.less", "lib/less/js/test/less/errors/bad-variable-declaration1.less", "lib/less/js/test/less/errors/bad-variable-declaration1.txt", "lib/less/js/test/less/errors/comment-in-selector.less", "lib/less/js/test/less/errors/comment-in-selector.txt", "lib/less/js/test/less/errors/import-missing.less", "lib/less/js/test/less/errors/import-missing.txt", "lib/less/js/test/less/errors/import-no-semi.less", "lib/less/js/test/less/errors/import-no-semi.txt", "lib/less/js/test/less/errors/import-subfolder1.less", "lib/less/js/test/less/errors/import-subfolder1.txt", "lib/less/js/test/less/errors/import-subfolder2.less", "lib/less/js/test/less/errors/import-subfolder2.txt", "lib/less/js/test/less/errors/imports/import-subfolder1.less", "lib/less/js/test/less/errors/imports/import-subfolder2.less", "lib/less/js/test/less/errors/imports/import-test.less", "lib/less/js/test/less/errors/imports/subfolder/mixin-not-defined.less", "lib/less/js/test/less/errors/imports/subfolder/parse-error-curly-bracket.less", "lib/less/js/test/less/errors/javascript-error.less", "lib/less/js/test/less/errors/javascript-error.txt", "lib/less/js/test/less/errors/mixed-mixin-definition-args-1.less", "lib/less/js/test/less/errors/mixed-mixin-definition-args-1.txt", "lib/less/js/test/less/errors/mixed-mixin-definition-args-2.less", "lib/less/js/test/less/errors/mixed-mixin-definition-args-2.txt", "lib/less/js/test/less/errors/mixin-not-defined.less", "lib/less/js/test/less/errors/mixin-not-defined.txt", "lib/less/js/test/less/errors/mixin-not-matched.less", "lib/less/js/test/less/errors/mixin-not-matched.txt", "lib/less/js/test/less/errors/mixin-not-matched2.less", "lib/less/js/test/less/errors/mixin-not-matched2.txt", "lib/less/js/test/less/errors/parse-error-curly-bracket.less", "lib/less/js/test/less/errors/parse-error-curly-bracket.txt", "lib/less/js/test/less/errors/parse-error-missing-bracket.less", "lib/less/js/test/less/errors/parse-error-missing-bracket.txt", "lib/less/js/test/less/errors/parse-error-with-import.less", "lib/less/js/test/less/errors/parse-error-with-import.txt", "lib/less/js/test/less/errors/property-ie5-hack.less", "lib/less/js/test/less/errors/property-ie5-hack.txt", "lib/less/js/test/less/errors/recursive-variable.less", "lib/less/js/test/less/errors/recursive-variable.txt", "lib/less/js/test/less/functions.less", "lib/less/js/test/less/ie-filters.less", "lib/less/js/test/less/import-once.less", "lib/less/js/test/less/import.less", "lib/less/js/test/less/import/deeper/import-once-test-a.less", "lib/less/js/test/less/import/import-and-relative-paths-test.less", "lib/less/js/test/less/import/import-charset-test.less", "lib/less/js/test/less/import/import-once-test-c.less", "lib/less/js/test/less/import/import-test-a.less", "lib/less/js/test/less/import/import-test-b.less", "lib/less/js/test/less/import/import-test-c.less", "lib/less/js/test/less/import/import-test-d.css", "lib/less/js/test/less/import/import-test-e.less", "lib/less/js/test/less/import/imports/font.less", "lib/less/js/test/less/import/imports/logo.less", "lib/less/js/test/less/import/urls.less", "lib/less/js/test/less/javascript.less", "lib/less/js/test/less/lazy-eval.less", "lib/less/js/test/less/media.less", "lib/less/js/test/less/mixins-args.less", "lib/less/js/test/less/mixins-closure.less", "lib/less/js/test/less/mixins-guards.less", "lib/less/js/test/less/mixins-important.less", "lib/less/js/test/less/mixins-named-args.less", "lib/less/js/test/less/mixins-nested.less", "lib/less/js/test/less/mixins-pattern.less", "lib/less/js/test/less/mixins.less", "lib/less/js/test/less/operations.less", "lib/less/js/test/less/parens.less", "lib/less/js/test/less/rulesets.less", "lib/less/js/test/less/scope.less", "lib/less/js/test/less/selectors.less", "lib/less/js/test/less/static-urls/urls.less", "lib/less/js/test/less/strings.less", "lib/less/js/test/less/urls.less", "lib/less/js/test/less/variables.less", "lib/less/js/test/less/whitespace.less"]
  s.homepage = %q{http://lesscss.org}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{less}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Leaner CSS, in your browser or Ruby (via less.js)}
  s.test_files = ["spec/less/faulty/faulty.less", "spec/less/loader_spec.rb", "spec/less/one/one.less", "spec/less/parser_spec.rb", "spec/less/some/some.css", "spec/less/some/some.less", "spec/less/two/two.less", "spec/spec_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<commonjs>, ["~> 0.2.6"])
    else
      s.add_dependency(%q<commonjs>, ["~> 0.2.6"])
    end
  else
    s.add_dependency(%q<commonjs>, ["~> 0.2.6"])
  end
end
