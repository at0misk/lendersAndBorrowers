class AddAmmountToJoins < ActiveRecord::Migration
  def change
    add_column :joins, :ammount, :float
  end
end
