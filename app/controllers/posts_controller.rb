class PostsController < ApplicationController

before_action :authenticate_user!

#"def ... end" methods
# "@..." are instance variables
  def index
    #@post = Post.paginate(:page => params[:page], :per_page => 10)
    @post = Post.search(params[:term], params[:page])    
  end

  #def new
   # @post = Post.new
 # end

  def create
    @user = current_user
    @post = current_user.posts.build(post_params)
    @post.save
    redirect_to '/posts'
  end

  def show
    @user = current_user
    @post = Post.find(params[:id])
    @comments = @post.comments.all
    @comment = current_user.comments.build
  end

  private

    def post_params
    params.require(:post).permit(:content, :title)
    end

      #def comment_params
    #params.require(:comment).permit(:content, :post_id, :user_id, :id, @user, @post, @comment)
    #end
  end
