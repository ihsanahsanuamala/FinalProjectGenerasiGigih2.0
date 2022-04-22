json.extract! orders_menu, :id, :order_id, :menu_id, :integer, :created_at, :updated_at
json.url orders_menu_url(orders_menu, format: :json)
