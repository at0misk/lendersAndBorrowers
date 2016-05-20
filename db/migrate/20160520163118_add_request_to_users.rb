class AddRequestToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :request, :float
  end
end
