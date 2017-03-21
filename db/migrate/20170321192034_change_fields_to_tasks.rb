class ChangeFieldsToTasks < ActiveRecord::Migration[5.0]
  def change
    remove_column :tasks, :title
    remove_column :tasks, :author
    add_column :tasks, :name, :string
    add_column :tasks, :deadline, :datetime
  end
end
