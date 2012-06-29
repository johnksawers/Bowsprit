class Question < ActiveRecord::Base
  has_many :answers, :dependent => :destroy
  belongs_to :question_set
  attr_accessible :title, :subtitle, :order,:all
end
