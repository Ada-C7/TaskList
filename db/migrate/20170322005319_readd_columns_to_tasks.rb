class ReaddColumnsToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column(:tasks, :name, :string)
    add_column(:tasks, :chore, :string)
    add_column(:tasks, :completed, :string)
  end
end
