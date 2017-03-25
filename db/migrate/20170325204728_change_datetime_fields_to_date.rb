class ChangeDatetimeFieldsToDate < ActiveRecord::Migration[5.0]
  def change
    change_column :tasks, :completed, :date
    change_column :tasks, :deadline, :date
  end
end
