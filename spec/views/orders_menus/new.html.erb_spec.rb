require 'rails_helper'

RSpec.describe "orders_menus/new", type: :view do
  before(:each) do
    assign(:orders_menu, OrdersMenu.new(
      order_id: 1,
      menu_id: "MyString",
      integer: "MyString"
    ))
  end

  it "renders new orders_menu form" do
    render

    assert_select "form[action=?][method=?]", orders_menus_path, "post" do

      assert_select "input[name=?]", "orders_menu[order_id]"

      assert_select "input[name=?]", "orders_menu[menu_id]"

      assert_select "input[name=?]", "orders_menu[integer]"
    end
  end
end
