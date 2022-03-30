class WowsController < ApplicationController
    before_action :find_post
    before_action :find_wow, only: [:destroy]

    def create
      if already_wowed?
        flash[:notice] = "You can't Wow more than once"
      else
        @post.wows.create(user_id: current_user.id)
      end
      redirect_to post_path(@post)
    end

    def destroy
  if !(already_wowed?)
    flash[:notice] = "Cannot wow"
  else
    @wow.destroy
  end
  redirect_to post_path(@post)
end
    private
    def find_wow
      @wow = @post.wows.find(params[:id])
   end
    def already_wowed?
      Wow.where(user_id: current_user.id, post_id:
      params[:post_id]).exists?
    end

    def find_post
      @post = Post.find(params[:post_id])
    end
    
end
