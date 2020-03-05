class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :items, dependent: :destroy
  has_many :donations, dependent: :destroy
  has_many :looks, dependent: :destroy
  has_many :messages, dependent: :destroy

  # https://github.com/sungwoncho/has_friendship to check docs
  has_friendship

  has_one_attached :photo


  validates :username, presence: true
  validates_each :items do |user, attr, value|
    user.errors.add attr, "Too many items for user" if user.items.size > user.items_limit
  end
end
