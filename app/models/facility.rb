class Facility < ApplicationRecord
  has_many :flat_facilities
  has_attachment :icon
end
