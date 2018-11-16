class ProductOrder < ApplicationRecord
  belongs_to :product, :purchase

# validations here

  monetize :order_value_cents
end
