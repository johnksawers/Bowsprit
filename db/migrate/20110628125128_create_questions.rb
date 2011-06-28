class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.string :subtitle
      t.boolean :response_matches

      t.timestamps
    end
  end
end
