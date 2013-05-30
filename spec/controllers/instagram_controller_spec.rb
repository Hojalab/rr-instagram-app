require 'spec_helper'

describe InstagramController do
  #controller_name :instagram
  
  #let(:instagram) { InstagramController.new }
  

  describe "GET 'index'" do
    render_views #Tell test to render views  
    it "renders the index template" do
      get :index
      pending 'Should return index page'
    end

  end

  describe "GET 'popular'" do
    
    it "returns http success" do
      get 'popular'
      #response.should be_success
      pending 'Should return popular page'
    end
  end

  describe "GET 'recent'" do
    it "returns http success" do
      get 'recent'
      #response.should be_success
      pending 'Should return recent page'
    end
  end

  describe "GET 'trending'" do
    it "returns http success" do
      get 'trending'
      #response.should be_success
      pending 'Should return trending page'
    end
  end

  describe "GET 'callback'" do
    it "returns http success" do
      get 'callback'
      #response.should be_success
      pending 'Should return callback page'
    end
  end

  describe "GET 'authorize'" do
    it "returns http success" do
      get 'authorize'
      #response.should be_success
      pending 'Should return authorize page'
    end
  end

end
