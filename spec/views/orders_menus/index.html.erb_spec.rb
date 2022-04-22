require 'rails_helper'

RSpec.describe "orders_menus/index", type: :view do
  before(:each) do
    assign(:orders_menus, [
      OrdersMenu.create!(
        order_id: 2,
        menu_id: "Menu",
        integer: "Integer"
      ),
      OrdersMenu.create!(
        order_id: 2,
        menu_id: "Menu",
        integer: "Integer"
      )
    ])
  end

  it "renders a list of orders_menus" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Menu".to_s, count: 2
    assert_select "tr>td", text: "Integer".to_s, count: 2
  end
end
