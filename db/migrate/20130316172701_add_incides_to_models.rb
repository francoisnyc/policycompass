class AddIncidesToModels < ActiveRecord::Migration
  def change
    add_index :orgs, :id

    add_index :policies, :id
    add_index :policies, :org_id

    add_index :questions, :id
    add_index :questions, :policy_id
  end
end
