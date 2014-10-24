require 'rails_helper'

RSpec.describe "item_vintages/new", :type => :view do
  before(:each) do
    assign(:item_vintage, ItemVintage.new(
      :year => 1
    ))
  end

  it "renders new item_vintage form" do
    render

    assert_select "form[action=?][method=?]", item_vintages_path, "post" do

      assert_select "input#item_vintage_year[name=?]", "item_vintage[year]"
    end
  end
end
