class Look < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :items

  validates :title, presence: true
end
