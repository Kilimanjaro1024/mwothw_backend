class PostsController < ApplicationController
  before_action :authorized
  before_action :set_post, only: [:show, :update, :destroy]

  

  # GET /posts
  def index
    @posts = Post.all

    render json: @posts
  end

  # GET /posts/1
  def show
    @posts = Post.where(user_id: @user.id)

    render json: @posts
  end

  def user_posts
    @posts = Post.where(user_id: @user.id)

    render json: @posts
  end

  def posts_by_user
    @posts = Post.where(username: @users.username)
    p params

    render json: @posts
  end

  # POST /posts
  def create
    @post = Post.new(post_params)
    @post.user_id = @user.id
    @post.username = @user.username

    if @post.save
      render json: @post, status: :created, location: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /posts/1
  def update
    if @post.update(post_params)
      render json: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /posts/1
  def destroy
    @post.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      p params
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:title, :topic, :content, :likes)
    end
end
