class CreateRatingsforMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :rating, :integer
  end
end
