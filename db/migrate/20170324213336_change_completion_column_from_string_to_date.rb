class ChangeCompletionColumnFromStringToDate < ActiveRecord::Migration[5.0]
  def change
    change_column :tasks, :completion, :date
  end
end
