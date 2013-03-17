class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question
      t.integer :policy_id, :null => false

      t.timestamps
    end

    add_index :questions, :policy_id
  end
end
