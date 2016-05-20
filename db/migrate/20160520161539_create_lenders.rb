class CreateLenders < ActiveRecord::Migration
  def change
    create_table :lenders do |t|
      t.references :user, index: true

      t.timestamps
    end
  end
end
