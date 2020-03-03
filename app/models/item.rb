class Item < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :looks

  validates :name, presence: true
  validates :size, presence: true
end
