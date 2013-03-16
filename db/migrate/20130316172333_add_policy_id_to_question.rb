class AddPolicyIdToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :policy_id, :integer
  end
end
