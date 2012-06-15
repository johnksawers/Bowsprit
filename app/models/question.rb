class Question < ActiveRecord::Base
  has_many :answers
  attr_accessible :title, :subtitle, :order,:all
end
