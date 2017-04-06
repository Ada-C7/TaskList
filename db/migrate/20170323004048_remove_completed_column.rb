class RemoveCompletedColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :tasks, :completed
    remove_column :tasks, :completion_date
  end
end
