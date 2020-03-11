class ChatRoom < ApplicationRecord
  belongs_to :user_one, class_name: "User"
  belongs_to :user_two, class_name: "User"
  has_many :messages, dependent: :destroy

  validate :check_duplicates
  validates_uniqueness_of :user_one, scope: :user_two

  def check_duplicates
    if ChatRoom.find_by(user_one: user_two, user_two: user_one)
      errors.add(:user_one, "Chat room already exists")
    end
  end
end
