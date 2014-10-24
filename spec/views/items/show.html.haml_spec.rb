require 'rails_helper'

RSpec.describe "items/show", :type => :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      :repository_id => "Repository",
      :item_type_id => "Item Type",
      :item_region_id => "Item Region",
      :item_size_id => "Item Size",
      :item_count => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Repository/)
    expect(rendered).to match(/Item Type/)
    expect(rendered).to match(/Item Region/)
    expect(rendered).to match(/Item Size/)
    expect(rendered).to match(/1/)
  end
end
