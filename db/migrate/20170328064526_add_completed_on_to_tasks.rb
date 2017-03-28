class AddCompletedOnToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :completed_on, :date
  end
end
