require 'rails_helper'

RSpec.describe "ItemVintages", :type => :request do
  describe "GET /item_vintages" do
    it "works! (now write some real specs)" do
      get item_vintages_path
      expect(response.status).to be(200)
    end
  end
end
