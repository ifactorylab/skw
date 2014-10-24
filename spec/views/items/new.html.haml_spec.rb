require 'rails_helper'

RSpec.describe "items/new", :type => :view do
  before(:each) do
    assign(:item, Item.new(
      :repository_id => "MyString",
      :item_type_id => "MyString",
      :item_region_id => "MyString",
      :item_size_id => "MyString",
      :item_count => 1
    ))
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do

      assert_select "input#item_repository_id[name=?]", "item[repository_id]"

      assert_select "input#item_item_type_id[name=?]", "item[item_type_id]"

      assert_select "input#item_item_region_id[name=?]", "item[item_region_id]"

      assert_select "input#item_item_size_id[name=?]", "item[item_size_id]"

      assert_select "input#item_item_count[name=?]", "item[item_count]"
    end
  end
end
