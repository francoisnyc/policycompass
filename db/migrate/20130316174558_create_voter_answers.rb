class CreateVoterAnswers < ActiveRecord::Migration
  def up
    create_table :voter_answers do |t|
      t.integer :voter_id, :null => false
      t.integer :question_id, :null => false
      t.integer :answer, :null => false

      t.timestamps
    end

    add_index :voter_answers, :voter_id
    add_index :voter_answers, :question_id
  end

  def down
    drop_table :voter_answers
  end
end
