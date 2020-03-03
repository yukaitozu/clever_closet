class Look < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :items
  has_many_attached :photos

  validates :title, presence: true
end
