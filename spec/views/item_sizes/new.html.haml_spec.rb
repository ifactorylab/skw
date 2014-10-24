require 'rails_helper'

RSpec.describe "item_sizes/new", :type => :view do
  before(:each) do
    assign(:item_size, ItemSize.new(
      :name => "MyString",
      :amount => 1
    ))
  end

  it "renders new item_size form" do
    render

    assert_select "form[action=?][method=?]", item_sizes_path, "post" do

      assert_select "input#item_size_name[name=?]", "item_size[name]"

      assert_select "input#item_size_amount[name=?]", "item_size[amount]"
    end
  end
end
