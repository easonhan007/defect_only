require "spec_helper"

describe DefectsController do
  describe "routing" do

    it "routes to #index" do
      get("/defects").should route_to("defects#index")
    end

    it "routes to #new" do
      get("/defects/new").should route_to("defects#new")
    end

    it "routes to #show" do
      get("/defects/1").should route_to("defects#show", :id => "1")
    end

    it "routes to #edit" do
      get("/defects/1/edit").should route_to("defects#edit", :id => "1")
    end

    it "routes to #create" do
      post("/defects").should route_to("defects#create")
    end

    it "routes to #update" do
      put("/defects/1").should route_to("defects#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/defects/1").should route_to("defects#destroy", :id => "1")
    end

  end
end
