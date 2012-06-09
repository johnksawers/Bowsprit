class ChangeInterviewQuestionRelationToHasMany < ActiveRecord::Migration
  def change
    add_column :questions, :interview_id, :integer, :null =>false
    drop_table :interviews_questions
  end

end
