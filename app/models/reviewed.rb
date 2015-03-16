class Reviewed < ActiveRecord::Base
  belongs_to :category
  has_many :microposts

  def average_rating
  	total_rating = 0
  	self.microposts.each do |micropost|
  		total_rating = total_rating + micropost.rating.to_f
  	end
  	average_rating = total_rating/self.microposts.count
  	return average_rating.round(2)
  end

  def rating_count
    self.microposts.count
  end
end
