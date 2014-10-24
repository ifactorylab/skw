require 'rails_helper'

RSpec.describe "item_vintages/edit", :type => :view do
  before(:each) do
    @item_vintage = assign(:item_vintage, ItemVintage.create!(
      :year => 1
    ))
  end

  it "renders the edit item_vintage form" do
    render

    assert_select "form[action=?][method=?]", item_vintage_path(@item_vintage), "post" do

      assert_select "input#item_vintage_year[name=?]", "item_vintage[year]"
    end
  end
end
