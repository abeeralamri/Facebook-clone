module ApplicationHelper

    def friends_with?(post_user)
        return true if current_user.friendships.where(user_id: current_user.id, friend_id: post_user, friendship_status: true).exists?
    end

end
