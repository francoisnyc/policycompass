class CreatePolicies < ActiveRecord::Migration
  def change
    create_table :policies do |t|
      t.string :name
      t.string :link
      t.text :abstract
      t.integer :org_id, :null => false

      t.timestamps
    end

    add_index :policies, :org_id
  end
end
