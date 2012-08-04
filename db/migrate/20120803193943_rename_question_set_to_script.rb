class RenameQuestionSetToScript < ActiveRecord::Migration
  def change
      rename_table :question_sets, :scripts
      rename_column :questions, :question_set_id, :script_id
      rename_column :interviews, :question_set_id, :script_id
  end
end
