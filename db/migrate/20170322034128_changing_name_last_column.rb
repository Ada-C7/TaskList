class ChangingNameLastColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :tasks, :completed_at, :completed_at
  end
end
