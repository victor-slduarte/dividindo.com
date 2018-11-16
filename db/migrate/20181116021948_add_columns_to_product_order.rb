class AddColumnsToProductOrder < ActiveRecord::Migration[5.2]
  def change
    add_reference :product_orders, :product, foreign_key: true
  end
end
