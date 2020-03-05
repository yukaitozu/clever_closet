class ChatRoomsController < ApplicationController
  def show
    @chat_room = ChatRoom.includes(messages: :user).find(params[:id])
    authorize @chat_room
  end
end


# add user ids to chatroom
# create AR relationship in users
# map borrow button to create action
# create action has find or create by
# redirect to show