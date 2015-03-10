class AddReviewedIdToMicroposts < ActiveRecord::Migration
  def change
  	add_column :microposts, :reviewed_id, :integer
  end
end
