class LoveysController < ApplicationController
    before_action :find_post
    before_action :find_lovey, only: [:destroy]

    def create
      if already_loveyed?
        flash[:notice] = "You can't love more than once"
      else
        @post.loveys.create(user_id: current_user.id)
      end
      redirect_to post_path(@post)
    end

    def destroy
  if !(already_loveyed?)
    flash[:notice] = "Cannot unlove"
  else
    @lovey.destroy
  end
  redirect_to post_path(@post)
end
    private
    def find_lovey
      @lovey = @post.loveys.find(params[:id])
   end
    def already_loveyed?
      Lovey.where(user_id: current_user.id, post_id:
      params[:post_id]).exists?
    end

    def find_post
      @post = Post.find(params[:post_id])
    end
end
