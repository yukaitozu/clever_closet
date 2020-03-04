class Donation < ApplicationRecord
  belongs_to :user
  belongs_to :item

  validates :full_name, :address, :pick_up_date, presence: true
end
