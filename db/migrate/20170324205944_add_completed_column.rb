class AddCompletedColumn < ActiveRecord::Migration[5.0]
  def change
    change_column :tasks, :complete, :boolean
    add_column :tasks, :completed_on, :datetime
  end
end
