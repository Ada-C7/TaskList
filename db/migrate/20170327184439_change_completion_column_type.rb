class ChangeCompletionColumnType < ActiveRecord::Migration[5.0]
  def change
    change_column("tasks", "completion_date", :string )
  end
end
