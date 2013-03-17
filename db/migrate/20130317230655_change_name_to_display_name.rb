class ChangeNameToDisplayName < ActiveRecord::Migration
  rename_column :voters, :name, :display_name
  rename_column :orgs, :name, :display_name
  rename_column :candidates, :name, :display_name
end
