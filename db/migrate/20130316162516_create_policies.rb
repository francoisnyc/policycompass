class CreatePolicies < ActiveRecord::Migration
  def change
    create_table :policies do |t|
      t.string :name
      t.string :link
      t.text :abstract

      t.timestamps
    end
  end
end
