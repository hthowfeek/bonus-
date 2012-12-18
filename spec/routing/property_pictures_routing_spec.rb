require "spec_helper"

describe PropertyPicturesController do
  describe "routing" do

    it "routes to #index" do
      get("/property_pictures").should route_to("property_pictures#index")
    end

    it "routes to #new" do
      get("/property_pictures/new").should route_to("property_pictures#new")
    end

    it "routes to #show" do
      get("/property_pictures/1").should route_to("property_pictures#show", :id => "1")
    end

    it "routes to #edit" do
      get("/property_pictures/1/edit").should route_to("property_pictures#edit", :id => "1")
    end

    it "routes to #create" do
      post("/property_pictures").should route_to("property_pictures#create")
    end

    it "routes to #update" do
      put("/property_pictures/1").should route_to("property_pictures#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/property_pictures/1").should route_to("property_pictures#destroy", :id => "1")
    end

  end
end
