# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{instagram-fixed}
  s.version = "0.8.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Shayne Sweeney"]
  s.date = %q{2011-10-06 00:00:00.000000000Z}
  s.description = %q{A Ruby wrapper for the Instagram REST and Search APIs}
  s.email = ["shayne@instagr.am"]
  s.files = [".gitignore", ".rspec", ".yardopts", "Gemfile", "LICENSE.md", "README.md", "Rakefile", "instagram-fixed.gemspec", "lib/faraday/oauth2.rb", "lib/faraday/raise_http_4xx.rb", "lib/faraday/raise_http_5xx.rb", "lib/instagram-fixed.rb", "lib/instagram-fixed/api.rb", "lib/instagram-fixed/client.rb", "lib/instagram-fixed/client/comments.rb", "lib/instagram-fixed/client/geographies.rb", "lib/instagram-fixed/client/likes.rb", "lib/instagram-fixed/client/locations.rb", "lib/instagram-fixed/client/media.rb", "lib/instagram-fixed/client/subscriptions.rb", "lib/instagram-fixed/client/tags.rb", "lib/instagram-fixed/client/users.rb", "lib/instagram-fixed/client/utils.rb", "lib/instagram-fixed/configuration.rb", "lib/instagram-fixed/connection.rb", "lib/instagram-fixed/error.rb", "lib/instagram-fixed/oauth.rb", "lib/instagram-fixed/request.rb", "lib/instagram-fixed/version.rb", "spec/faraday/response_spec.rb", "spec/fixtures/access_token.json", "spec/fixtures/approve_user.json", "spec/fixtures/block_user.json", "spec/fixtures/deny_user.json", "spec/fixtures/follow_user.json", "spec/fixtures/followed_by.json", "spec/fixtures/follows.json", "spec/fixtures/geography_recent_media.json", "spec/fixtures/liked_media.json", "spec/fixtures/location.json", "spec/fixtures/location_recent_media.json", "spec/fixtures/location_search.json", "spec/fixtures/media.json", "spec/fixtures/media_comment.json", "spec/fixtures/media_comment_deleted.json", "spec/fixtures/media_comments.json", "spec/fixtures/media_liked.json", "spec/fixtures/media_likes.json", "spec/fixtures/media_popular.json", "spec/fixtures/media_search.json", "spec/fixtures/media_unliked.json", "spec/fixtures/mikeyk.json", "spec/fixtures/recent_media.json", "spec/fixtures/relationship.json", "spec/fixtures/requested_by.json", "spec/fixtures/shayne.json", "spec/fixtures/subscription.json", "spec/fixtures/subscription_deleted.json", "spec/fixtures/subscription_payload.json", "spec/fixtures/subscriptions.json", "spec/fixtures/tag.json", "spec/fixtures/tag_recent_media.json", "spec/fixtures/tag_search.json", "spec/fixtures/unblock_user.json", "spec/fixtures/unfollow_user.json", "spec/fixtures/user_media_feed.json", "spec/fixtures/user_search.json", "spec/instagram/api_spec.rb", "spec/instagram/client/comments_spec.rb", "spec/instagram/client/geography_spec.rb", "spec/instagram/client/likes_spec.rb", "spec/instagram/client/locations_spec.rb", "spec/instagram/client/media_spec.rb", "spec/instagram/client/subscriptions_spec.rb", "spec/instagram/client/tags_spec.rb", "spec/instagram/client/users_spec.rb", "spec/instagram/client_spec.rb", "spec/instagram_spec.rb", "spec/spec_helper.rb"]
  s.homepage = %q{https://github.com/Instagram/instagramrb}
  s.post_install_message = %q{********************************************************************************

 \ Follow @instagram on Twitter for announcements, updates, and news.
  https://twitter.com/instagramapi

 \ Join the mailing list!
  https://groups.google.com/group/instagram-ruby-gem

********************************************************************************
}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{instagram-fixed}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Ruby wrapper for the Instagram API}
  s.test_files = ["spec/faraday/response_spec.rb", "spec/fixtures/access_token.json", "spec/fixtures/approve_user.json", "spec/fixtures/block_user.json", "spec/fixtures/deny_user.json", "spec/fixtures/follow_user.json", "spec/fixtures/followed_by.json", "spec/fixtures/follows.json", "spec/fixtures/geography_recent_media.json", "spec/fixtures/liked_media.json", "spec/fixtures/location.json", "spec/fixtures/location_recent_media.json", "spec/fixtures/location_search.json", "spec/fixtures/media.json", "spec/fixtures/media_comment.json", "spec/fixtures/media_comment_deleted.json", "spec/fixtures/media_comments.json", "spec/fixtures/media_liked.json", "spec/fixtures/media_likes.json", "spec/fixtures/media_popular.json", "spec/fixtures/media_search.json", "spec/fixtures/media_unliked.json", "spec/fixtures/mikeyk.json", "spec/fixtures/recent_media.json", "spec/fixtures/relationship.json", "spec/fixtures/requested_by.json", "spec/fixtures/shayne.json", "spec/fixtures/subscription.json", "spec/fixtures/subscription_deleted.json", "spec/fixtures/subscription_payload.json", "spec/fixtures/subscriptions.json", "spec/fixtures/tag.json", "spec/fixtures/tag_recent_media.json", "spec/fixtures/tag_search.json", "spec/fixtures/unblock_user.json", "spec/fixtures/unfollow_user.json", "spec/fixtures/user_media_feed.json", "spec/fixtures/user_search.json", "spec/instagram/api_spec.rb", "spec/instagram/client/comments_spec.rb", "spec/instagram/client/geography_spec.rb", "spec/instagram/client/likes_spec.rb", "spec/instagram/client/locations_spec.rb", "spec/instagram/client/media_spec.rb", "spec/instagram/client/subscriptions_spec.rb", "spec/instagram/client/tags_spec.rb", "spec/instagram/client/users_spec.rb", "spec/instagram/client_spec.rb", "spec/instagram_spec.rb", "spec/spec_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["~> 2.4"])
      s.add_development_dependency(%q<webmock>, ["~> 1.6"])
      s.add_development_dependency(%q<bluecloth>, ["~> 2.0.11"])
      s.add_runtime_dependency(%q<faraday>, [">= 0"])
      s.add_runtime_dependency(%q<faraday_middleware>, [">= 0"])
      s.add_runtime_dependency(%q<multi_json>, [">= 0"])
      s.add_runtime_dependency(%q<hashie>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, ["~> 2.4"])
      s.add_dependency(%q<webmock>, ["~> 1.6"])
      s.add_dependency(%q<bluecloth>, ["~> 2.0.11"])
      s.add_dependency(%q<faraday>, [">= 0"])
      s.add_dependency(%q<faraday_middleware>, [">= 0"])
      s.add_dependency(%q<multi_json>, [">= 0"])
      s.add_dependency(%q<hashie>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, ["~> 2.4"])
    s.add_dependency(%q<webmock>, ["~> 1.6"])
    s.add_dependency(%q<bluecloth>, ["~> 2.0.11"])
    s.add_dependency(%q<faraday>, [">= 0"])
    s.add_dependency(%q<faraday_middleware>, [">= 0"])
    s.add_dependency(%q<multi_json>, [">= 0"])
    s.add_dependency(%q<hashie>, [">= 0"])
  end
end
