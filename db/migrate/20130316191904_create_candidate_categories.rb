class CreateCandidateCategories < ActiveRecord::Migration
  def change
    create_table :candidate_categories do |t|
      t.integer :candidate_id, :null => false
      t.integer :category_id, :null => false

      t.timestamps
    end

    add_index :candidate_categories, :candidate_id
    add_index :candidate_categories, :category_id
  end
end
