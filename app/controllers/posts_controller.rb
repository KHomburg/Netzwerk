class PostsController < ApplicationController

before_action :authenticate_user!

#"def ... end" methods
# "@..." are instance variables
  def index
    #@post = Post.paginate(:page => params[:page], :per_page => 10)
    @post = Post.search(params[:term], params[:page])    
  end

  def new
    @user = current_user
    @post = Post.new
  end 
  
  def create
    @user = current_user
    @post = current_user.posts.build(post_params)
    @post.save
    redirect_to '/posts'
  end

  def show
    @user = current_user
    @post = Post.find(params[:id]) #takes the id out of the blog-show-url, find the post and safes it to @post
    @comments = @post.comments.all #takes all comments of the post (for showing all comments on a post)
    @comment = current_user.comments.build
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to action: :index
  end

  private

    def post_params
    params.require(:post).permit(:content, :title, :image, :image_id)
    end

  end
