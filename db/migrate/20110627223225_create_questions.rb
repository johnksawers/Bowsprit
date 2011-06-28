class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.string :title
      t.string :subtitle
      t.text :expected_response
      t.text :response
      t.boolean :response_match

      t.timestamps
    end
  end

  def self.down
    drop_table :questions
  end
end
