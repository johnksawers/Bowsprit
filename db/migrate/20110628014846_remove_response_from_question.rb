class RemoveResponseFromQuestion < ActiveRecord::Migration
  def self.up
    remove_column :questions, :response
  end

  def self.down
    add_column :questions, :response, :integer
  end
end
