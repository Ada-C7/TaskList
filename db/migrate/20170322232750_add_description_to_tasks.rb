class AddDescriptionToTasks < ActiveRecord::Migration[5.0]

  def change
    add_column :tasks, :description, :string

    add_column :tasks, :completion_date, :string
  end
end
