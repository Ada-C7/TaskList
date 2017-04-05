class AddCollumnsToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :complete_by, :date
    add_column :tasks, :status, :string
  end
end
