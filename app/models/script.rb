class Script < ActiveRecord::Base
  has_many :questions, :dependent => :destroy
  accepts_nested_attributes_for :questions, :reject_if => :reject_question, :allow_destroy => true
  has_many :interviews, :dependent => :destroy
  accepts_nested_attributes_for :interviews, :reject_if => :reject_interview, :allow_destroy => true

  def reject_question(attributed)
    attributed['title'].blank?
  end
  def reject_interview(attributed)
    attributed['name'].blank?
  end
  attr_accessible :name, :questions_attributes,:interviews_attributes
end
