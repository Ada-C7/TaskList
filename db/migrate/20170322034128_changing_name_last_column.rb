class ChangingNameLastColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column(tasks, comple, completed_at)
  end
end
