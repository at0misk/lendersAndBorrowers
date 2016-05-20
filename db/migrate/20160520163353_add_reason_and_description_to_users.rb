class AddReasonAndDescriptionToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :reason, :string
  	add_column :users, :description, :string
  end
end
