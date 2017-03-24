class ChangeDateFormatInTasksToDate < ActiveRecord::Migration[5.0]
  def change
    change_column :tasks, :completed_by, :date
  end
end
