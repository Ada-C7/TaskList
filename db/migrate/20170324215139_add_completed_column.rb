class AddCompletedColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :completed, :date
  end
end
