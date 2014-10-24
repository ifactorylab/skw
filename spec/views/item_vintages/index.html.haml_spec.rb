require 'rails_helper'

RSpec.describe "item_vintages/index", :type => :view do
  before(:each) do
    assign(:item_vintages, [
      ItemVintage.create!(
        :year => 1
      ),
      ItemVintage.create!(
        :year => 1
      )
    ])
  end

  it "renders a list of item_vintages" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
