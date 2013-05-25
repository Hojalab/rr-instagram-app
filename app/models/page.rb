class Page < ActiveRecord::Base
  attr_accessible :content, :created, :slug, :title
end
