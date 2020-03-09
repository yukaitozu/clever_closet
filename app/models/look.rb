class Look < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :items, -> { distinct(:id)}
  has_many_attached :photos
  validates :title, presence: true
  validate :has_enough_items, on: :update

  def has_enough_items
    if items.count < 3
      errors.add(:items, "must be at least three")
    end
  end
end
