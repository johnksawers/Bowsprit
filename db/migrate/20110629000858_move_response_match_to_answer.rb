class MoveResponseMatchToAnswer < ActiveRecord::Migration
  def up
    remove_column :questions, :response_matches
    add_column :answers, :response_matches, :boolean
  end
end
