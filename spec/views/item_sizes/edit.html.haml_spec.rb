require 'rails_helper'

RSpec.describe "item_sizes/edit", :type => :view do
  before(:each) do
    @item_size = assign(:item_size, ItemSize.create!(
      :name => "MyString",
      :amount => 1
    ))
  end

  it "renders the edit item_size form" do
    render

    assert_select "form[action=?][method=?]", item_size_path(@item_size), "post" do

      assert_select "input#item_size_name[name=?]", "item_size[name]"

      assert_select "input#item_size_amount[name=?]", "item_size[amount]"
    end
  end
end
