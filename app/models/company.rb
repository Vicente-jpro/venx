class Company < ApplicationRecord
  belongs_to :address
  has_one_attached :image
end
