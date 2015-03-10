class MicropostsController < ApplicationController
	before_action :logged_in_user, only: [:create, :destroy]
	before_action :correct_user, only: :destroy

	def create
		@micropost = current_user.microposts.build(micropost_params)
		@reviewed = Reviewed.find_or_create_by(:name => micropost_params[:subject])
		@reviewed.category_id ||= micropost_params[:category_id]
		@reviewed.save
		@micropost.reviewed_id = @reviewed.id
		@micropost.save
		if @micropost.save
			flash[:success] = "Review created!"
			redirect_to root_url
		else
			@feed_items = []
			render 'static_pages/home'
		end
	end

	def destroy
		@micropost.destroy
		flash[:success] = "Review deleted"
		redirect_to request.referrer || root_url
	end

	def like
		session[:return_to] ||= request.referer
		@micropost = Micropost.find(params[:id])
		@micropost.liked_by current_user

		if request.xhr?
    	render json: { count: micropost.get_likes.size, id: params[:id] }
  	else
  		redirect_to session.delete(:return_to)
  	end
		#redirect_to session.delete(:return_to)
	end

	def dislike
		session[:return_to] ||= request.referer
		@micropost = Micropost.find(params[:id])
		@micropost.disliked_by current_user
		redirect_to redirect_to session.delete(:return_to)
	end

	private

	def micropost_params
		params.require(:micropost).permit(:content, :picture, :rating, :category_id, :subject)
	end

	def correct_user
		@micropost = current_user.microposts.find_by(id: params[:id])
		redirect_to root_url if @micropost.nil?
	end

end
