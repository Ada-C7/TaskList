class AddCompletedAtFieldToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :completed_at, :string
  end
end
