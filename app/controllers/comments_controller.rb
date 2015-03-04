class CommentsController < ApplicationController
	
  def create
    @micropost = Micropost.find(params[:micropost_id])
    @comment = @micropost.comments.create(params[:comment].permit(:comment))
    @comment.user_id = session[:user_id]
    @comment.save
    redirect_to root_url
  end

end
