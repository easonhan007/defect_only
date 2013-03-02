require 'spec_helper'

describe SessionsController do
  fixtures :users

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end

  describe "POST 'create'" do
    it "returns http success" do
      post 'create', name: 'dave', password: 'private'
      session[:user_id].should eql(users(:one).id)
      response.should redirect_to(users_url)
    end
  end

  describe "GET 'destroy'" do
    it "returns http success" do
      session[:user_id] = users(:one).id
      get 'destroy'
      session[:user_id].should be_nil
      response.should redirect_to(login_url)
    end
  end
end
