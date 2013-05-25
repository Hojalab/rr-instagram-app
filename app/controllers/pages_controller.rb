
class PagesController < ApplicationController
  
  
  # GET /pages
  # GET /pages.json
  def index
    @pages = Page.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @pages }
    end
  end

  # GET /pages/1
  # GET /pages/1.json
  def show
    @page = Page.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @page }
    end
  end
  def slug
    @page = Page.find(params[:slug])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @page }
    end
  end

  # GET /pages/new
  # GET /pages/new.json
  def new
    @page = Page.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @page }
    end
  end

  # GET /pages/1/edit
  def edit
    @page = Page.find(params[:id])
  end

  # POST /pages
  # POST /pages.json
  def create
    @page = Page.new(params[:page])

    respond_to do |format|
      if @page.save
        format.html { redirect_to @page, :notice => 'Page was successfully created.' }
        format.json { render :json => @page, :status => :created, :location => @page }
      else
        format.html { render :action => "new" }
        format.json { render :json => @page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pages/1
  # PUT /pages/1.json
  def update
    @page = Page.find(params[:id])

    respond_to do |format|
      if @page.update_attributes(params[:page])
        format.html { redirect_to @page, :notice => 'Page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pages/1
  # DELETE /pages/1.json
  def destroy
    @page = Page.find(params[:id])
    @page.destroy

    respond_to do |format|
      format.html { redirect_to pages_url }
      format.json { head :no_content }
    end
  end
  
  
  def instagram
  


# All methods require authentication (either by client ID or access token).
# To get your Instagram OAuth credentials, register an app at http://instagr.am/oauth/client/register/
Instagram.configure do |config|
  config.client_id = YOUR_CLIENT_KEY
  config.access_token = YOUR_ACCESS_TOKEN
end

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

