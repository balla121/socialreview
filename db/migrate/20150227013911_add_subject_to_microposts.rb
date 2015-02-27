class AddSubjectToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :subject, :string, :limit => 25
  end
end
