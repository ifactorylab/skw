require 'rails_helper'

RSpec.describe "item_sizes/show", :type => :view do
  before(:each) do
    @item_size = assign(:item_size, ItemSize.create!(
      :name => "Name",
      :amount => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
  end
end
