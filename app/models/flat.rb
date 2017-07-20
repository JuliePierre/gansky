class Flat < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_attachment :map_picture
  has_attachment :cover_picture
  has_attachments :photos
  has_attachment :virtual_visit_trigger_picture
  has_attachment :funky_picture

  has_many :flat_facilities, dependent: :destroy
  has_many :facilities, through: :flat_facilities
  has_many :user_applications, dependent: :destroy

  accepts_nested_attributes_for :flat_facilities
  accepts_nested_attributes_for :facilities

  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :nb_rooms, presence: true
  validates :price_per_room, presence: true
  validates :occupied, inclusion: { in: [true, false] }
  validates :sub_description, presence: true
  validates :zipcode, presence: true
  validates :city, presence: true
  validates :neighborhood, presence: true
  validates :availability_date, presence: true
end
