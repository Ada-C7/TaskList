class DeletePriorityColumnFromModel < ActiveRecord::Migration[5.0]
  def change
    remove_column :tasks, :priority
  end
end
