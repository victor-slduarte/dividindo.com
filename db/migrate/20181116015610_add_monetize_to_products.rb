class AddMonetizeToProducts < ActiveRecord::Migration[5.2]
  def change
    add_monetize :products, :current_price, currency: { present: false }
    add_monetize :products, :avg_price, currency: { present: false }
    add_monetize :products, :price_goal, currency: { present: false }
  end
end
