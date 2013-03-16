class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :website
      t.string :formal_affiliation

      t.timestamps
    end
  end
end
