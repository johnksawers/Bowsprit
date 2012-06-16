class RenameInterviewToQuestionSet < ActiveRecord::Migration
  def change
      rename_table :interviews, :question_sets
  end
end
