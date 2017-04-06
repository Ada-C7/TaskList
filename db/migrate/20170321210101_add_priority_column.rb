class AddPriorityColumn < ActiveRecord::Migration[5.0]
  def change
    # command    table name  column   data type
    add_column :tasks, :priority, :string

  end
end
