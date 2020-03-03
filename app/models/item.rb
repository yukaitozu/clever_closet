class Item < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :looks
  has_one_attached :photo

  validates :name, presence: true
  validates :size, presence: true
  validates :category, presence: true

  acts_as_taggable_on :tags

  CATEGORIES = ["top", "bottom", "shoe", "outerwear", "accessory"]
end
