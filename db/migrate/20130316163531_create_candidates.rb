class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :website, :default => "NA"
      t.string :formal_affiliation, :default => "NA"

      t.boolean :approved, :default => false

      t.timestamps
    end
  end
end
