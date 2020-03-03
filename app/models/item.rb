class Item < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_all_items,
    against: [ :name, :size, :category ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
  belongs_to :user
  has_and_belongs_to_many :looks
  has_one_attached :photo


  validates :name, :size, presence: true
  validates :category, presence: true

  acts_as_taggable_on :tags

  CATEGORIES = ["top", "bottom", "shoe", "outerwear", "accessory"]
end
