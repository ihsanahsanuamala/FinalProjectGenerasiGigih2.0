class CreateOrdersMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :orders_menus do |t|
      t.integer :order_id
      t.string :menu_id
      t.string :integer

      t.timestamps
    end
  end
end
