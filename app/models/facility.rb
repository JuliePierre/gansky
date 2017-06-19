class Facility < ApplicationRecord
  has_many :flat_facilities
  has_many :flats, through: :flat_facilities
  accepts_nested_attributes_for :flat_facilities

  has_attachment :icon
end
