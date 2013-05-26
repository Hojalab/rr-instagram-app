require 'spec_helper'

describe "Instagram Pages" do
  
  #Test the index page
  describe "GET /instagram/index" do
    it "should display the index page" do
      visit '/instagram/index'
      page.should have_content('Instagram')
    end
  end
  
  
  #Test the popular page
  
  #Test the recent page
  
  #Test the trending page
  
  
end
