class Answer < ActiveRecord::Migration
  def self.up
    create_table :answers do |t|
      t.string :response
      t.integer :interviewee_id

      t.timestamps
    end
  end

  def self.down
  end
end
