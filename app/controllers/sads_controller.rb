class SadsController < ApplicationController

    before_action :find_post
    before_action :find_sad, only: [:destroy]

    def create
      if already_saded?
        flash[:notice] = "You can't sad more than once"
      else
        @post.sads.create(user_id: current_user.id)
      end
      redirect_to post_path(@post)
    end

    def destroy
  if !(already_saded?)
    flash[:notice] = "Cannot sad"
  else
    @sad.destroy
  end
  redirect_to post_path(@post)
end
    private
    def find_sad
      @sad = @post.sads.find(params[:id])
   end
    def already_saded?
      Sad.where(user_id: current_user.id, post_id:
      params[:post_id]).exists?
    end

    def find_post
      @post = Post.find(params[:post_id])
    end
end
