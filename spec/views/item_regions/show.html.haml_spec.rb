require 'rails_helper'

RSpec.describe "item_regions/show", :type => :view do
  before(:each) do
    @item_region = assign(:item_region, ItemRegion.create!(
      :country => "Country",
      :region => "Region",
      :level => "Level"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Region/)
    expect(rendered).to match(/Level/)
  end
end
