class Interview < ActiveRecord::Base
    has_many :answers, :dependent => :destroy
    accepts_nested_attributes_for :answers, :reject_if => :validate_answer, :allow_destroy => true
    has_one :script

    def validate_answer(attributed)
      attributed['response'].blank?
    end
end
