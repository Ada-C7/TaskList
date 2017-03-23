class RemoveDuedateColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :tasks, :duedate

  end
end
