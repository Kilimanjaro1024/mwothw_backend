class LikedPostsController < ApplicationController
  before_action :authorized
  before_action :set_liked_post, only: [:show, :update, :destroy]

  # GET /liked_posts
  def index
    @liked_posts = LikedPost.all

    render json: @liked_posts
  end

  # GET /liked_posts/1
  def show
    render json: @liked_post
  end

  def liked_posts
    @liked_posts = LikedPost.where(user_id: @user.id)

    render json: @liked_posts
  end

  # POST /liked_posts
  def create
    @liked_post = LikedPost.new(liked_post_params)
    @liked_post.user_id = @user.id
    @liked_post.username = @user.username

    if @liked_post.save
      render json: @liked_post, status: :created, location: @liked_post
    else
      render json: @liked_post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /liked_posts/1
  def update
    if @liked_post.update(liked_post_params)
      render json: @liked_post
    else
      render json: @liked_post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /liked_posts/1
  def destroy
    @liked_post.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_liked_post
      @liked_post = LikedPost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def liked_post_params
      params.require(:liked_post).permit(:title, :topic, :content, :likes, :user_id)
    end
end
