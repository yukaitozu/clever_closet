class UsersController < ApplicationController

  def index
    if params[:query].present?
      @users = User.where("username ILIKE ?", "%#{params[:query]}%")
    else
      # delete it and show another thing
      @users = nil
    end
    @user = policy_scope(User)
  end

  def show
    @user = User.find(params[:id])
    authorize @user

  end

  def edit
      @user = User.find(params[:id])
      authorize @user
  end

  def update
    @user = User.find(params[:id])
    authorize @user
    @user.update(user_params)
    redirect_to user_path
  end

  def link
    @user = User.find(params[:user_id])
    authorize @user
  end

  def notification
    @notifications = Notification.where(user: current_user)
    unread_ids = @notifications.reject(&:read?).select(&:id)
    @notifications.read!(unread_ids)
    authorize current_user
  end

  def request_friendship
    @user = User.find(params[:user_id])
    current_user.friend_request(@user)




     # Notification.create(notify_type: 'friends request', actor: current_user, user: @user, target: @user )
    authorize @user
    # raise

    redirect_to users_path
  end

  def accept_request
    @user = User.find(params[:user_id])
    current_user.accept_request(@user)
     authorize @user
     # raise

    redirect_to users_path
  end

  def decline_request
    @user = User.find(params[:user_id])
    current_user.decline_request(@user)
     authorize @user
    # raise

    redirect_to users_path
  end

  def remove_friend
    @user = User.find(params[:user_id])
    current_user.remove_friend(@user)
    authorize @user
    # raise

    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:username, :items_limit)
  end

end
