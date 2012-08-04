class Question < ActiveRecord::Base
  has_many :answers, :dependent => :destroy
  belongs_to :script
  attr_accessible :title, :subtitle, :order,:all
end
