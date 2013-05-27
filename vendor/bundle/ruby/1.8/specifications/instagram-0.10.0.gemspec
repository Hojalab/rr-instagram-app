# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{instagram}
  s.version = "0.10.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Shayne Sweeney"]
  s.date = %q{2013-02-22}
  s.description = %q{A Ruby wrapper for the Instagram REST and Search APIs}
  s.email = ["shayne@instagr.am"]
  s.files = [".gitignore", ".rspec", ".yardopts", "Gemfile", "LICENSE.md", "README.md", "Rakefile", "instagram.gemspec", "lib/faraday/oauth2.rb", "lib/faraday/raise_http_exception.rb", "lib/instagram.rb", "lib/instagram/api.rb", "lib/instagram/client.rb", "lib/instagram/client/comments.rb", "lib/instagram/client/embedding.rb", "lib/instagram/client/geographies.rb", "lib/instagram/client/likes.rb", "lib/instagram/client/locations.rb", "lib/instagram/client/media.rb", "lib/instagram/client/subscriptions.rb", "lib/instagram/client/tags.rb", "lib/instagram/client/users.rb", "lib/instagram/client/utils.rb", "lib/instagram/configuration.rb", "lib/instagram/connection.rb", "lib/instagram/error.rb", "lib/instagram/oauth.rb", "lib/instagram/request.rb", "lib/instagram/response.rb", "lib/instagram/version.rb", "spec/faraday/response_spec.rb", "spec/fixtures/access_token.json", "spec/fixtures/approve_user.json", "spec/fixtures/block_user.json", "spec/fixtures/deny_user.json", "spec/fixtures/follow_user.json", "spec/fixtures/followed_by.json", "spec/fixtures/follows.json", "spec/fixtures/geography_recent_media.json", "spec/fixtures/liked_media.json", "spec/fixtures/location.json", "spec/fixtures/location_recent_media.json", "spec/fixtures/location_search.json", "spec/fixtures/location_search_fsq.json", "spec/fixtures/media.json", "spec/fixtures/media_comment.json", "spec/fixtures/media_comment_deleted.json", "spec/fixtures/media_comments.json", "spec/fixtures/media_liked.json", "spec/fixtures/media_likes.json", "spec/fixtures/media_popular.json", "spec/fixtures/media_search.json", "spec/fixtures/media_unliked.json", "spec/fixtures/mikeyk.json", "spec/fixtures/oembed.json", "spec/fixtures/recent_media.json", "spec/fixtures/relationship.json", "spec/fixtures/requested_by.json", "spec/fixtures/shayne.json", "spec/fixtures/subscription.json", "spec/fixtures/subscription_deleted.json", "spec/fixtures/subscription_payload.json", "spec/fixtures/subscriptions.json", "spec/fixtures/tag.json", "spec/fixtures/tag_recent_media.json", "spec/fixtures/tag_search.json", "spec/fixtures/unblock_user.json", "spec/fixtures/unfollow_user.json", "spec/fixtures/user_media_feed.json", "spec/fixtures/user_search.json", "spec/instagram/api_spec.rb", "spec/instagram/client/comments_spec.rb", "spec/instagram/client/embedding_spec.rb", "spec/instagram/client/geography_spec.rb", "spec/instagram/client/likes_spec.rb", "spec/instagram/client/locations_spec.rb", "spec/instagram/client/media_spec.rb", "spec/instagram/client/subscriptions_spec.rb", "spec/instagram/client/tags_spec.rb", "spec/instagram/client/users_spec.rb", "spec/instagram/client_spec.rb", "spec/instagram_spec.rb", "spec/spec_helper.rb"]
  s.homepage = %q{https://github.com/Instagram/instagram-ruby-gem}
  s.post_install_message = %q{********************************************************************************

 \ Follow @instagramapi on Twitter for announcements, updates, and news.
  https://twitter.com/instagramapi

 \ Join the mailing list!
  https://groups.google.com/group/instagram-ruby-gem

********************************************************************************
}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{instagram}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Ruby wrapper for the Instagram API}
  s.test_files = ["spec/faraday/response_spec.rb", "spec/fixtures/access_token.json", "spec/fixtures/approve_user.json", "spec/fixtures/block_user.json", "spec/fixtures/deny_user.json", "spec/fixtures/follow_user.json", "spec/fixtures/followed_by.json", "spec/fixtures/follows.json", "spec/fixtures/geography_recent_media.json", "spec/fixtures/liked_media.json", "spec/fixtures/location.json", "spec/fixtures/location_recent_media.json", "spec/fixtures/location_search.json", "spec/fixtures/location_search_fsq.json", "spec/fixtures/media.json", "spec/fixtures/media_comment.json", "spec/fixtures/media_comment_deleted.json", "spec/fixtures/media_comments.json", "spec/fixtures/media_liked.json", "spec/fixtures/media_likes.json", "spec/fixtures/media_popular.json", "spec/fixtures/media_search.json", "spec/fixtures/media_unliked.json", "spec/fixtures/mikeyk.json", "spec/fixtures/oembed.json", "spec/fixtures/recent_media.json", "spec/fixtures/relationship.json", "spec/fixtures/requested_by.json", "spec/fixtures/shayne.json", "spec/fixtures/subscription.json", "spec/fixtures/subscription_deleted.json", "spec/fixtures/subscription_payload.json", "spec/fixtures/subscriptions.json", "spec/fixtures/tag.json", "spec/fixtures/tag_recent_media.json", "spec/fixtures/tag_search.json", "spec/fixtures/unblock_user.json", "spec/fixtures/unfollow_user.json", "spec/fixtures/user_media_feed.json", "spec/fixtures/user_search.json", "spec/instagram/api_spec.rb", "spec/instagram/client/comments_spec.rb", "spec/instagram/client/embedding_spec.rb", "spec/instagram/client/geography_spec.rb", "spec/instagram/client/likes_spec.rb", "spec/instagram/client/locations_spec.rb", "spec/instagram/client/media_spec.rb", "spec/instagram/client/subscriptions_spec.rb", "spec/instagram/client/tags_spec.rb", "spec/instagram/client/users_spec.rb", "spec/instagram/client_spec.rb", "spec/instagram_spec.rb", "spec/spec_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["~> 2.4"])
      s.add_development_dependency(%q<webmock>, ["~> 1.6"])
      s.add_development_dependency(%q<bluecloth>, ["~> 2.0.11"])
      s.add_runtime_dependency(%q<faraday>, [">= 0.7", "< 0.9"])
      s.add_runtime_dependency(%q<faraday_middleware>, ["~> 0.8"])
      s.add_runtime_dependency(%q<multi_json>, [">= 1.0.3", "~> 1.0"])
      s.add_runtime_dependency(%q<hashie>, [">= 0.4.0"])
    else
      s.add_dependency(%q<rspec>, ["~> 2.4"])
      s.add_dependency(%q<webmock>, ["~> 1.6"])
      s.add_dependency(%q<bluecloth>, ["~> 2.0.11"])
      s.add_dependency(%q<faraday>, [">= 0.7", "< 0.9"])
      s.add_dependency(%q<faraday_middleware>, ["~> 0.8"])
      s.add_dependency(%q<multi_json>, [">= 1.0.3", "~> 1.0"])
      s.add_dependency(%q<hashie>, [">= 0.4.0"])
    end
  else
    s.add_dependency(%q<rspec>, ["~> 2.4"])
    s.add_dependency(%q<webmock>, ["~> 1.6"])
    s.add_dependency(%q<bluecloth>, ["~> 2.0.11"])
    s.add_dependency(%q<faraday>, [">= 0.7", "< 0.9"])
    s.add_dependency(%q<faraday_middleware>, ["~> 0.8"])
    s.add_dependency(%q<multi_json>, [">= 1.0.3", "~> 1.0"])
    s.add_dependency(%q<hashie>, [">= 0.4.0"])
  end
end
