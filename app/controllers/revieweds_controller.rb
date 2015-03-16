class ReviewedsController < ApplicationController
	
  def create
  end

  def show
  	@reviewed = Reviewed.find(params[:id])
  	@microposts = @reviewed.microposts
  end

  def index
    @revieweds = Reviewed.all
  end

  def destroy

  end


end