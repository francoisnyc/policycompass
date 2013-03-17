class CreatePolicyCategories < ActiveRecord::Migration
  def change
    create_table :policy_categories do |t|
      t.integer :policy_id, :null => false
      t.integer :category_id, :null => false

      t.timestamps
    end

    add_index :policy_categories, :policy_id
    add_index :policy_categories, :category_id
  end
end
