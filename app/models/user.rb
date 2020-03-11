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

  # https://github.com/merit-gem/merit
  has_merit

  has_one_attached :photo



  validates :username, presence: true
  validates_each :items do |user, attr, value|
    user.errors.add attr, "Too many items for user" if user.items.size > user.items_limit
  end
  # user.clothes("top")
  def clothes(type)
    Item.where(user_id: id, category: type)
  end

  def my_looks
    Look.where(user_id: id)
  end

  def friends_looks
    Look.where.not(user_id: id)
  end
  
  def on_friendship_accepted(friendship)
    ChatRoom.create(user_one: friendship.friendable, user_two: friendship.friend)
  end

  def chat_room_with(user)
     chat_rooms.find_by("user_one_id = ? OR user_two_id = ?", user.id, user.id)
  end

  def chat_rooms
    ChatRoom.where("user_one_id = ? OR user_two_id = ?", id, id)
  end


  # notification for friend request



  def create_notification
    Notification.create do |notification|
      notification.notify_type = 'request_friendship'
      notification.actor = self
      notification.user = self
      notification.target = self
    end
  end


end
