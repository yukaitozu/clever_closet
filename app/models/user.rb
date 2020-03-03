class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :items, dependent: :destroy
  has_many :donations, dependent: :destroy
  has_many :looks, dependent: :destroy

  # https://github.com/sungwoncho/has_friendship to check docs
  has_friendship

  validates :username, presence: true
end
