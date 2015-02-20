class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(email: params[:session][:email].downcase)
  	if user && user.authenticate(params[:session][:password])
      if user.activated?
  		  log_in user
        params[:session][:remember_me] == '1' ? remember(user) : forget(user)
  		  redirect_back_or user
  		  # log the user in and redirect to the user's show page
      else
        message = "Account not activated."
        message += "Check your email for the actiation link"
        flash[:warning] = message
        redirect_to root_url
      end
  	else
  		flash.now[:danger] = 'Invalid email/password conbination'
  		# create an error message
  		render 'new'
  	end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end

end
