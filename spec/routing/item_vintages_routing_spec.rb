require "rails_helper"

RSpec.describe ItemVintagesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/item_vintages").to route_to("item_vintages#index")
    end

    it "routes to #new" do
      expect(:get => "/item_vintages/new").to route_to("item_vintages#new")
    end

    it "routes to #show" do
      expect(:get => "/item_vintages/1").to route_to("item_vintages#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/item_vintages/1/edit").to route_to("item_vintages#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/item_vintages").to route_to("item_vintages#create")
    end

    it "routes to #update" do
      expect(:put => "/item_vintages/1").to route_to("item_vintages#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/item_vintages/1").to route_to("item_vintages#destroy", :id => "1")
    end

  end
end
