class Donation < ApplicationRecord
  belongs_to :user
  belongs_to :item

  validates :address, :pick_up_date, presence: true



end
