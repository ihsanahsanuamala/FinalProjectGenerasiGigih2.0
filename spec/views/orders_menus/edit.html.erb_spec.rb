require 'rails_helper'

RSpec.describe "orders_menus/edit", type: :view do
  before(:each) do
    @orders_menu = assign(:orders_menu, OrdersMenu.create!(
      order_id: 1,
      menu_id: "MyString",
      integer: "MyString"
    ))
  end

  it "renders the edit orders_menu form" do
    render

    assert_select "form[action=?][method=?]", orders_menu_path(@orders_menu), "post" do

      assert_select "input[name=?]", "orders_menu[order_id]"

      assert_select "input[name=?]", "orders_menu[menu_id]"

      assert_select "input[name=?]", "orders_menu[integer]"
    end
  end
end
