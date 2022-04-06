module FriendsHelper 

  def pending_for_accept_my_request(user)
    friendship1 = @friends.map { |friendship| friendship.friend if !friendship.friendship_status }.compact
    friendship1.include?(user)
  end

  def pending_for_me_to_accept(user)
    friendship_2 = @inverse_friends.map { |friendship| friendship.user if !friendship.friendship_status }.compact
    friendship_2.include?(user)
  end

  def we_are_friends(user)
    friends_list = @friends.map { |friendship| friendship.friend if friendship.friendship_status }
    friends_list += @inverse_friends.map { |friendship| friendship.user if friendship.friendship_status }
    friends_list.compact
    friends_list.include?(user)
  end

  def find_friend_id(user)
    Friend.find_by(user_id: current_user.id, friend_id: user.id) ||
    Friend.find_by(user_id: user.id, friend_id: current_user.id)
  end

  def list_pending_friends(user)
    friendship_2 = @inverse_friends.map { |friendship| friendship.user if !friendship.friendship_status }.compact
    friendship_2
  end

  def my_friends?(friend)
    return true if current_user.friends.where(user_id: current_user.id, friend_id: friend, friendship_status: true).exists?
    return true if current_user.inverse_friends.where(user_id: friend, friend_id: current_user, friendship_status: true).exists?
  end
  
end