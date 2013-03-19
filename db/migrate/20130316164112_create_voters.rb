class CreateVoters < ActiveRecord::Migration
  def change
    create_table :voters do |t|
      t.string :name
      t.string :formal_affiliation, :default => "NA"
      t.string :location, :default => "NA"

      t.timestamps
    end
  end
end
