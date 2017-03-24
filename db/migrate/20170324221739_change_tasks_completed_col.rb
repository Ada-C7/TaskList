class ChangeTasksCompletedCol < ActiveRecord::Migration[5.0]
  def change
    change_column :tasks, :completed, :datetime
  end
end
