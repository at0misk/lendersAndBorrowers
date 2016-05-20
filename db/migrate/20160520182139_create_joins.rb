class CreateJoins < ActiveRecord::Migration
  def change
    create_table :joins do |t|
      t.references :borrower, references: :users, index: true
      t.references :lender, references: :users, index: true

      t.timestamps
    end
  end
end
