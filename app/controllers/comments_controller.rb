class CommentsController < ApplicationController
    
  #before_action :set_post

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params) 
    @comment.user_id = current_user.id #puts the current user id in the user_id column of the comments table
    @user = current_user

    if @comment.save
      flash[:success] = "Comment"
      redirect_to :back
    else
      flash[:alert] = "something went wrong."
      render root_path
    end
  end

  def destroy
    @comment = Comment.find(params[:id])

    @comment.destroy
    flash[:success] = "Comment deleted"
    redirect_to :back
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

 # def set_post
 #   @post = Post.find(params[:post_id]) #takes the id out of the blog-show-url, find the post and safes it to @post
 # end

end

