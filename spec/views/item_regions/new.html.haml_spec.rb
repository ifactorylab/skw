require 'rails_helper'

RSpec.describe "item_regions/new", :type => :view do
  before(:each) do
    assign(:item_region, ItemRegion.new(
      :country => "MyString",
      :region => "MyString",
      :level => "MyString"
    ))
  end

  it "renders new item_region form" do
    render

    assert_select "form[action=?][method=?]", item_regions_path, "post" do

      assert_select "input#item_region_country[name=?]", "item_region[country]"

      assert_select "input#item_region_region[name=?]", "item_region[region]"

      assert_select "input#item_region_level[name=?]", "item_region[level]"
    end
  end
end
