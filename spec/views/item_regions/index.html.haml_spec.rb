require 'rails_helper'

RSpec.describe "item_regions/index", :type => :view do
  before(:each) do
    assign(:item_regions, [
      ItemRegion.create!(
        :country => "Country",
        :region => "Region",
        :level => "Level"
      ),
      ItemRegion.create!(
        :country => "Country",
        :region => "Region",
        :level => "Level"
      )
    ])
  end

  it "renders a list of item_regions" do
    render
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Region".to_s, :count => 2
    assert_select "tr>td", :text => "Level".to_s, :count => 2
  end
end
