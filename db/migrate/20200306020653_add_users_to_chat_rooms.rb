class AddUsersToChatRooms < ActiveRecord::Migration[6.0]
  def change
    add_reference :chat_rooms, :user_one, foreign_key: { to_table: :users }
    add_reference :chat_rooms, :user_two, foreign_key: { to_table: :users }
  end
end
