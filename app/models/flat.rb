class Flat < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :flat_facilities, dependent: :destroy
  has_many :facilities, through: :flat_facilities
  has_many :user_applications

  accepts_nested_attributes_for :flat_facilities
  accepts_nested_attributes_for :facilities
end
