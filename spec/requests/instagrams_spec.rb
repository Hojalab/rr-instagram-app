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
  describe "GET /instagram/popular" do
    it "should display the popular page" do
      visit '/instagram/popular'
      page.should have_content('Instagram#popular')
    end
  end
    
  #Test the recent page
  describe "GET /instagram/recent" do
    it "should display the recent page" do
      visit '/instagram/recent'
      page.should have_content('Instagram#recent')
    end
  end
    
  #Test the trending page
  describe "GET /instagram/trending" do
    it "should display the trending page" do
      visit '/instagram/trending'
      page.should have_content('Instagram#trending')
    end
  end
  
  
end
