class AddOrderToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :order, :integer, :null => false
  end
end
