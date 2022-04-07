class GroupPostsController < ApplicationController
  before_action :set_group_post, only: %i[ show edit update destroy ]

  # GET /group_posts or /group_posts.json
  def index
    @group_posts = GroupPost.all
  end

  # GET /group_posts/1 or /group_posts/1.json
  def show
  end

  # GET /group_posts/new
  def new
    @group_post = GroupPost.new
    @group_id = params[:group_id]
    @group = Group.find(params[:group_id])

  end

  # GET /group_posts/1/edit
  def edit
  end

  # POST /group_posts or /group_posts.json
  def create
    @group_post = GroupPost.new(group_post_params)

    respond_to do |format|
      if @group_post.save
        format.html { redirect_to group_path(@group_post.group_id) }
        format.json { render :show, status: :created, location: @group_post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @group_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_posts/1 or /group_posts/1.json
  def update
    respond_to do |format|
      if @group_post.update(group_post_params)
        format.html { redirect_to group_url(@group_post), notice: "Group post was successfully updated." }
        format.json { render :show, status: :ok, location: @group_post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @group_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_posts/1 or /group_posts/1.json
  def destroy
    @group_post.destroy

    respond_to do |format|
      format.html { redirect_to group_posts_url, notice: "Group post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_post
      @group_post = GroupPost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def group_post_params
      params.require(:group_post).permit(:content, :user_id, :group_id)
    end
end
