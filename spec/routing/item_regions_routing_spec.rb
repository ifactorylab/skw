require "rails_helper"

RSpec.describe ItemRegionsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/item_regions").to route_to("item_regions#index")
    end

    it "routes to #new" do
      expect(:get => "/item_regions/new").to route_to("item_regions#new")
    end

    it "routes to #show" do
      expect(:get => "/item_regions/1").to route_to("item_regions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/item_regions/1/edit").to route_to("item_regions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/item_regions").to route_to("item_regions#create")
    end

    it "routes to #update" do
      expect(:put => "/item_regions/1").to route_to("item_regions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/item_regions/1").to route_to("item_regions#destroy", :id => "1")
    end

  end
end
