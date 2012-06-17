class CreateInterviews < ActiveRecord::Migration
  def change
    create_table :interviews do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end
