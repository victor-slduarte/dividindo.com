class Purchase < ApplicationRecord
  belongs_to :user
  has_many :product_orders

  # validations here

  monetize :final_value_cents
end
