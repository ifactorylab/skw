require 'rails_helper'

RSpec.describe "ItemRegions", :type => :request do
  describe "GET /item_regions" do
    it "works! (now write some real specs)" do
      get item_regions_path
      expect(response.status).to be(200)
    end
  end
end
