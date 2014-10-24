require "rails_helper"

RSpec.describe ItemSizesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/item_sizes").to route_to("item_sizes#index")
    end

    it "routes to #new" do
      expect(:get => "/item_sizes/new").to route_to("item_sizes#new")
    end

    it "routes to #show" do
      expect(:get => "/item_sizes/1").to route_to("item_sizes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/item_sizes/1/edit").to route_to("item_sizes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/item_sizes").to route_to("item_sizes#create")
    end

    it "routes to #update" do
      expect(:put => "/item_sizes/1").to route_to("item_sizes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/item_sizes/1").to route_to("item_sizes#destroy", :id => "1")
    end

  end
end
