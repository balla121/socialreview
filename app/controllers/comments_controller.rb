class CommentsController < ApplicationController
  def create
    @micropost = Micropost.find(params[:micropost_id])
    @comment = @micropost.comments.create(params[:comment].permit(:title, :body))
    @comment.save
  end
end
