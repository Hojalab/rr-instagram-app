require 'spec_helper'

describe InstagramController do
  #Tell test to render views
  render_views

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'popular'" do
    it "returns http success" do
      get 'popular'
      response.should be_success
    end
  end

  describe "GET 'recent'" do
    it "returns http success" do
      get 'recent'
      response.should be_success
    end
  end

  describe "GET 'trending'" do
    it "returns http success" do
      get 'trending'
      response.should be_success
    end
  end

  describe "GET 'callback'" do
    it "returns http success" do
      get 'callback'
      response.should be_success
    end
  end

  describe "GET 'authorize'" do
    it "returns http success" do
      get 'authorize'
      response.should be_success
    end
  end

end
