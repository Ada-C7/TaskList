class AddPriorityColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :priority, :string
  end
end
