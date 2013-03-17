class AddEmailToOrgAndCandidate < ActiveRecord::Migration
  def up
    add_column :orgs, :email, :string
    add_column :candidates, :email, :string
  end

  def down
    remove_column :orgs, :email
    remove_column :candidates, :email 
  end
end
