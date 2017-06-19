class Flat < ApplicationRecord
  has_many :flat_facilities
  has_many :facilities, through: :flat_facilities
end
