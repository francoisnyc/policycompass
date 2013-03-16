class CreateVoterCategories < ActiveRecord::Migration
  def change
    create_table :voter_categories do |t|
      t.integer :voter_id
      t.integer :category_id

      t.timestamps
    end

     add_index :voter_categories, :voter_id
     add_index :voter_categories, :category_id
  end
end
