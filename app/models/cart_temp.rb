class CartTemp < ApplicationRecord
  belongs_to :item
  validates :quantity, presence: true, comparison: { greater_than_or_equal_to: 1 } 
end
