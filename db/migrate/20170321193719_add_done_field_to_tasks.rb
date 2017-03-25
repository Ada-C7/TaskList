class AddDoneFieldToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :done, :string
  end
end
