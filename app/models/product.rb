class Product < ApplicationRecord
  belongs_to :category

  # validates
    monetize :price_cents
end
