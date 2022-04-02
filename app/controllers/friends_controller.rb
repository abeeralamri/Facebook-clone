class FriendsController < ApplicationController
before_action :find_friend, only: [:destroy, :edit]

  def index
    @profiles = Profile.all
    @users = User.all
    @friends = current_user.friends
    @inverse_friends = current_user.inverse_friends
  end

  def new
    @Friends = Friend.new
  end

  def create
    user = User.find(params[:id])
    @friend = Friend.create(user_id: current_user.id, friend_id: user.id, friendship_status: false)
    if @friend.save
      flash[:success] = 'Friend request successfull'
      redirect_to friend_list_path
    else
      flash[:danger] = 'Cannot send Friend request'
      redirect_to friend_list_path
    end
  end

  def edit
    if @friend_id
      @friend_id.update_attribute(:friendship_status, true)
      flash[:success] = 'Friend request accepted'
      redirect_to friend_list_path
    else
      flash[:danger] = 'Friend request not accepted'
      redirect_to friend_list_path
    end
  end

  def destroy
    if @friend_id
      @friend_id.destroy
      flash[:success] = 'Friend request canceled'
      redirect_to friend_list_path
    else
      flash[:danger] = 'Friend request NOT canceled'
    end
  end

  private

  def find_friend
    @friend_id = Friend.find(params[:id])
  end
end


