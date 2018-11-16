class AddFinalpriceToPurchase < ActiveRecord::Migration[5.2]
  def change
    add_monetize :purchases, :final_value, currency: { present: false }
  end
end
