require 'rails_helper'

RSpec.describe "item_sizes/index", :type => :view do
  before(:each) do
    assign(:item_sizes, [
      ItemSize.create!(
        :name => "Name",
        :amount => 1
      ),
      ItemSize.create!(
        :name => "Name",
        :amount => 1
      )
    ])
  end

  it "renders a list of item_sizes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
