require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'home'" do
    it "devrait r�ussir" do
      get 'home'
      response.should be_success
    end

    it "devrait avoir le bon titre" do
      get 'home'
      response.should have_selector("title",
                        :content => "Simple App du Tutoriel Ruby on Rails | Accueil")
    end
  end

  describe "GET 'contact'" do
    it "devrait r�ussir" do
      get 'contact'
      response.should be_success
    end

    it "devrait avoir le bon titre" do
      get 'contact'
      response.should have_selector("title",
                        :content =>
                          "Simple App du Tutoriel Ruby on Rails | Contact")
    end
  end

  describe "GET 'about'" do
    it "devrait r�ussir" do
      get 'about'
      response.should be_success
    end

    it "devrait avoir le bon titre" do
      get 'about'
      response.should have_selector("title",
                        :content =>
                          "Simple App du Tutoriel Ruby on Rails | � Propos")
    end
  end
end