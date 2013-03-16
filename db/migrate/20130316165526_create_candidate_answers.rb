class CreateCandidateAnswers < ActiveRecord::Migration
  def change
    create_table :candidate_answers do |t|
      t.integer :candidate_id, :null => false
      t.integer :question_id, :null => false
      t.integer :answer, :null => false

      t.timestamps
    end

    add_index :candidate_answers, :candidate_id
    add_index :candidate_answers, :question_id
  end
end
