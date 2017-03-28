class RenameActionToTitle < ActiveRecord::Migration[5.0]
  def change
    rename_column :tasks, :action, :title
  end
end
