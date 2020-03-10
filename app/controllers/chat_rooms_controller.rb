class ChatRoomsController < ApplicationController
  before_action :set_chat, only: [:show, :edit, :update]

  def index
    @chat_rooms = policy_scope(ChatRoom)
  end

  def show
    @item = Item.find(params[:item_id]) if params[:item_id]
    @message = Message.new(content: "Hi, can I borrow this?", item: @item) if params[:item_id]
    @chat_room = ChatRoom.includes(messages: :user).find(params[:id])
    @message = @message || Message.new
    if @chat_room.user_one == current_user
      @chat_room.name = @chat_room.user_two.username
    else 
      @chat_room.name = @chat_room.user_one.username
    end
    authorize @chat_room
  end

  def borrow
    
    show
    render 'show'
  end

  def new
    @chat_room = ChatRoom.new
    @chat_rooms = ChatRoom.all
    authorize @chat_room
  end

  def edit

  end

  def create
    @chat_room = ChatRoom.new # (chat_params)
    authorize @chat_room
    respond_to do |format|
      if @chat_room.save
        ActionCable.server.broadcast 'chat_room_channel', content: @chat_room
        format.html { redirect_to @chat_room, notice: 'Chat was successfully created.' }
        format.json { render :show, status: :created, location: @chat_room }
        format.js
      else
        format.html { render :new }
        format.json { render json: @chat_room.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # def chat_params
  #   params.require(:chat_room).permit(:message)
  # end

  def set_chat
    @chat_room = ChatRoom.find(params[:id])
  end
end


# add user ids to chatroom
# create AR relationship in users
# map borrow button to create action
# create action has find or create by
# redirect to show