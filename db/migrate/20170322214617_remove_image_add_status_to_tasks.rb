class RemoveImageAddStatusToTasks < ActiveRecord::Migration[5.0]
  def change
    remove_column :tasks, :img_url
    add_column :tasks, :complete, :boolean, :default => false
  end
end
