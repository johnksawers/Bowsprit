class CreateInterview < ActiveRecord::Migration
    def change
        create_table :interviews do |t|
            t.string :name
            t.integer :question_set_id
            t.timestamps
        end
        add_column :answers, :interview_id, :integer
    end
end
