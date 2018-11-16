class ProductOrder < ApplicationRecord
  belongs_to :product, :purchase
end
