class Flat < ApplicationRecord
  has_many :flat_facilities
  has_many :facilities, through: :flat_facilities

  accepts_nested_attributes_for :flat_facilities
  accepts_nested_attributes_for :facilities
end
