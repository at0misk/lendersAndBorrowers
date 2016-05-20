class CreateLents < ActiveRecord::Migration
  def change
    create_table :lents do |t|
      t.references :user, index: true

      t.timestamps
    end
  end
end
