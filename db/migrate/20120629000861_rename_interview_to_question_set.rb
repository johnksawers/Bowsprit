class RenameInterviewToQuestionSet < ActiveRecord::Migration
  def change
      rename_table :interviews, :question_sets
      rename_column :questions, :interview_id, :question_set_id
  end
end
