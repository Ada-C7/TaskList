class AddNewColumns < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :due, :date
    add_column :tasks, :completed, :date 
  end
end
