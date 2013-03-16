class CreateVoterAnswers < ActiveRecord::Migration
  def change
    create_table :voter_answers do |t|
      t.string :new

      t.timestamps
    end
  end
end
