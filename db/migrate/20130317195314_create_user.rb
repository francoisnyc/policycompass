class CreateUser < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :email, :null => false
    end

    add_column :voters, :user_id, :integer
    add_column :candidates, :user_id, :integer
    add_column :orgs, :user_id, :integer

    change_column :voters, :user_id, :integer, :null => false
    change_column :candidates, :user_id, :integer, :null => false
    change_column :orgs, :user_id, :integer, :null => false

    add_index :voters, :user_id
    add_index :candidates, :user_id
    add_index :orgs, :user_id
  end

  def down
    remove_column :voters, :user_id
    remove_column :candidates, :user_id
    remove_column :orgs, :user_id

    drop_table :users
  end
end
