class Supplier < ApplicationRecord
  belongs_to :address
  belongs_to :profile
end