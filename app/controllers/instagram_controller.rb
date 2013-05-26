require 'rubygems'
require 'bundler/setup'
require "instagram"

# All methods require authentication (either by client ID or access token).
# To get your Instagram OAuth credentials, register an app at http://instagr.am/oauth/client/register/
Instagram.configure do |config|
  config.client_id = '42af9189076c4ce7903df62e8afa2009'
#  config.access_token = YOUR_ACCESS_TOKEN
end

CALLBACK_URL = "http://3000/instagram/callback"

class InstagramController < ApplicationController
  def index
  end

  def popular
    @results = Instagram.media_popular
    respond_to do |format|
      format.html
      format.json { render :json => @results }
    end
  end

  def recent
    @results = Instagram.media_popular
    respond_to do |format|
      format.html
      format.json { render :json => @results }
    end
  end

  # Get nearby Instagram media
  def trending
    @results = Instagram.media_search(params[:lat], params[:lng])
    respond_to do |format|
      format.html
      format.json { render :json => @results }
    end
  end

  def authorize
    redirect_to Instagram.authorize_url(:redirect_uri => CALLBACK_URL)
  end

  # Connect to instagram for authorization
  def connect
  end

  # Callback handler for instagram authorization
  def callback
    response = Instagram.get_access_token(params[:code], :redirect_uri => CALLBACK_URL)
    session[:access_token] = response.access_token
    redirect_to :controller => 'feed', :action => 'index'
  end

  # Instagram page for handling api calls
  def instagram

    # Get a list of a user's most recent media
    puts Instagram.user_recent_media(777)

    # Use pagination data from a response to get the next page
    page_1 = Instagram.user_recent_media(777)
    page_2_max_id = page_1.pagination.next_max_id
    page_2 = Instagram.user_recent_media(777, :max_id => page_2_max_id ) unless page_2_max_id.nil?

    # Get the currently authenticated user's media feed
    puts Instagram.user_media_feed

    # Get a list of recent media at a given location, in this case, the Instagram office
    puts Instagram.location_recent_media(514276)

    # Get a list of media close to a given latitude and longitude
    puts Instagram.media_search("37.7808851","-122.3948632")

    # Get a list of the overall most popular media items
    puts Instagram.media_popular

    # Search for users on instagram, by name or username
    puts Instagram.user_search("shayne sweeney")

    # Search for a location by lat/lng
    puts Instagram.location_search("37.7808851","-122.3948632")

    # Search for a location by Fousquare ID (v2)
    puts Instagram.location_search("3fd66200f964a520c5f11ee3")
  end
end
