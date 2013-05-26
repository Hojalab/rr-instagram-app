class HomeController < ApplicationController
  
  
  # Home index page
  def index
    
    #render error if result. ...

    #@pages = Page.all
    #@popular = Instagram.media_popular;

    # Get a list of the overall most popular media items
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @popular }
    end
  end


 
end
