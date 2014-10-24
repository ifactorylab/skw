require 'rails_helper'

RSpec.describe "item_regions/edit", :type => :view do
  before(:each) do
    @item_region = assign(:item_region, ItemRegion.create!(
      :country => "MyString",
      :region => "MyString",
      :level => "MyString"
    ))
  end

  it "renders the edit item_region form" do
    render

    assert_select "form[action=?][method=?]", item_region_path(@item_region), "post" do

      assert_select "input#item_region_country[name=?]", "item_region[country]"

      assert_select "input#item_region_region[name=?]", "item_region[region]"

      assert_select "input#item_region_level[name=?]", "item_region[level]"
    end
  end
end
