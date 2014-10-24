require 'rails_helper'

RSpec.describe "item_vintages/show", :type => :view do
  before(:each) do
    @item_vintage = assign(:item_vintage, ItemVintage.create!(
      :year => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
  end
end
