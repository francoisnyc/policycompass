class AddOrgIdToPolicy < ActiveRecord::Migration
  def change
    add_column :policies, :org_id, :integer
  end
end
