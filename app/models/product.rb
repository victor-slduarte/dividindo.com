class Product < ApplicationRecord
  belongs_to :category
  has_many :product_orders

  # validations here

  monetize :current_price_cents
  monetize :avg_price_cents
  monetize :price_goal_cents
end
