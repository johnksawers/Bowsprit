class LinkInterviewsQuestionsAnswers < ActiveRecord::Migration

  def up
    create_table :interviews_questions, :id => false  do |t|
      t.integer :interview_id
      t.integer :question_id
      t.integer :order
      t.timestamps
    end
  end
end
