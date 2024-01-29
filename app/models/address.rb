class Address < ApplicationRecord
  belongs_to :city
  
  has_one :profile, dependent: :destroy
  has_one :supplier, dependent: :destroy

  validates_presence_of :street, :city
end
