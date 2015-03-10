class Category < ActiveRecord::Base
  has_many :microposts
  has_many :revieweds
end
