class Product < ApplicationRecord
  belongs_to :category
  has_many :product_orders

  # validates
    monetize :price_cents
end
