require 'rails_helper'

RSpec.describe "items/index", :type => :view do
  before(:each) do
    assign(:items, [
      Item.create!(
        :repository_id => "Repository",
        :item_type_id => "Item Type",
        :item_region_id => "Item Region",
        :item_size_id => "Item Size",
        :item_count => 1
      ),
      Item.create!(
        :repository_id => "Repository",
        :item_type_id => "Item Type",
        :item_region_id => "Item Region",
        :item_size_id => "Item Size",
        :item_count => 1
      )
    ])
  end

  it "renders a list of items" do
    render
    assert_select "tr>td", :text => "Repository".to_s, :count => 2
    assert_select "tr>td", :text => "Item Type".to_s, :count => 2
    assert_select "tr>td", :text => "Item Region".to_s, :count => 2
    assert_select "tr>td", :text => "Item Size".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
