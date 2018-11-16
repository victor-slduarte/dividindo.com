class AddOrdervalueToProductOrder < ActiveRecord::Migration[5.2]
  def change
    add_monetize :product_orders, :order_value, currency: { present: false }
  end
end
