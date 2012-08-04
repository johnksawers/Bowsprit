class RenameInterviewToQuestionSet < ActiveRecord::Migration
  def change
      rename_table :interviews, :scripts
      rename_column :questions, :interview_id, :script_id
  end
end
