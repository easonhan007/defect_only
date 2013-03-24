require "spec_helper"

describe FieldConfigsController do
  describe "routing" do

    it "routes to #index" do
      get("/field_configs").should route_to("field_configs#index")
    end

    it "routes to #new" do
      get("/field_configs/new").should route_to("field_configs#new")
    end

    it "routes to #show" do
      get("/field_configs/1").should route_to("field_configs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/field_configs/1/edit").should route_to("field_configs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/field_configs").should route_to("field_configs#create")
    end

    it "routes to #update" do
      put("/field_configs/1").should route_to("field_configs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/field_configs/1").should route_to("field_configs#destroy", :id => "1")
    end

  end
end
