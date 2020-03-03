class Item < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :looks
  has_one_attached :photo

  validates :name, presence: true
  validates :size, presence: true
end
