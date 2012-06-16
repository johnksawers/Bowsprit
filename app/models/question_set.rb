class QuestionSet < ActiveRecord::Base
  has_many :questions, :dependent => :destroy
  accepts_nested_attributes_for :questions, :reject_if => :reject_question, :allow_destroy => true

  def reject_question(attributed)
    attributed['title'].blank?
  end

  attr_accessible :name, :questions_attributes
end
