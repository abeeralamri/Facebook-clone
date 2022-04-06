class AngrysController < ApplicationController
    before_action :find_post
    before_action :find_like, only: [:destroy]

    def create
      if already_angred?
        flash[:notice] = "You can't be angry more than once"
      else
        @post.angrys.create(user_id: current_user.id)
      end
      redirect_to post_path(@post)
    end

    def destroy
  if !(already_angred?)
    flash[:notice] = "Cannot unlike"
  else
    @angry.destroy
  end
  redirect_to post_path(@post)
end
    private
    def find_like
      @angry = @post.angrys.find(params[:id])
   end
    def already_angred?
        Angry.where(user_id: current_user.id, post_id:
      params[:post_id]).exists?
    end

    def find_post
      @post = Post.find(params[:post_id])
    end
end
