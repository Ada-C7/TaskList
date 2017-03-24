class AddDueDateAndDescription < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :description, :text
    add_column :tasks, :due_date, :string
  end
end
