class AddApprovedToOrgs < ActiveRecord::Migration
  def change
    add_column :orgs, :approved, :boolean
  end
end
