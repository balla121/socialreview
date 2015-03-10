class CreateReviewed < ActiveRecord::Migration
  def change
    create_table :revieweds do |t|
    	t.string :name
    	t.references :category


    	t.timestamps
    end
    add_index :revieweds, :category_id
  end
end
