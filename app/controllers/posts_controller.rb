class PostsController < ApplicationController


  def index
  @post = Post.all
  end

  def new
  @post = Post.new
  end

  def create
  @user = current_user
  @post = current_user.posts.build(post_params)
  @post.save
  redirect_to '/posts'
  end

  private

  def post_params
  params.require(:post).permit(:content)
  end
  end
