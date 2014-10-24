require 'rails_helper'

RSpec.describe "ItemSizes", :type => :request do
  describe "GET /item_sizes" do
    it "works! (now write some real specs)" do
      get item_sizes_path
      expect(response.status).to be(200)
    end
  end
end
