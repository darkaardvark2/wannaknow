require "spec_helper"

describe UserprojectsController do
  describe "routing" do

    it "routes to #index" do
      get("/userprojects").should route_to("userprojects#index")
    end

    it "routes to #new" do
      get("/userprojects/new").should route_to("userprojects#new")
    end

    it "routes to #show" do
      get("/userprojects/1").should route_to("userprojects#show", :id => "1")
    end

    it "routes to #edit" do
      get("/userprojects/1/edit").should route_to("userprojects#edit", :id => "1")
    end

    it "routes to #create" do
      post("/userprojects").should route_to("userprojects#create")
    end

    it "routes to #update" do
      put("/userprojects/1").should route_to("userprojects#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/userprojects/1").should route_to("userprojects#destroy", :id => "1")
    end

  end
end
