class CommentsController < ApplicationController
	
  def create
  	session[:return_to] ||= request.referer
    @micropost = Micropost.find(params[:micropost_id])
    @comment = @micropost.comments.create(params[:comment].permit(:comment))
    @comment.user_id = session[:user_id]
    @comment.save
    redirect_to session.delete(:return_to)
  end

end
