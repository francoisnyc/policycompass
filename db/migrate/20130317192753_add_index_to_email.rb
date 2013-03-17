class AddIndexToEmail < ActiveRecord::Migration
  def change
  	add_index :voters, :email, unique: true
  	add_index :orgs, :email, unique: true
  	add_index :candidates, :email, unique: true
  end
end
