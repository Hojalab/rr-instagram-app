class HomeController < ApplicationController
  
  
  # Handle displaying the home page with an overview of this webapp.
  def index
    respond_to do |format|
      format.html # index.html.erb
    end
  end


  # Handle displaying the about page with information about this webapp
  def about
    respond_to do |format|
      format.html # index.html.erb
    end
  end

 
end
