require 'rails_helper'

RSpec.describe "orders_menus/show", type: :view do
  before(:each) do
    @orders_menu = assign(:orders_menu, OrdersMenu.create!(
      order_id: 2,
      menu_id: "Menu",
      integer: "Integer"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Menu/)
    expect(rendered).to match(/Integer/)
  end
end
