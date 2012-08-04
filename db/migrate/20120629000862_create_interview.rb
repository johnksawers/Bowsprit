class CreateInterview < ActiveRecord::Migration
    def change
        create_table :interviews do |t|
            t.string :name
            t.integer :script_id
            t.timestamps
        end
        add_column :answers, :interview_id, :integer
    end
end
