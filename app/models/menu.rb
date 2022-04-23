class Menu < ApplicationRecord
  has_many: category
  has_many: orders_menu
end
