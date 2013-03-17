class CreateVoters < ActiveRecord::Migration
  def change
    create_table :voters do |t|
      t.string :name
      t.string :formal_affiliation
      t.string :location

      t.timestamps
    end
  end
end
