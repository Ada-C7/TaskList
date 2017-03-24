class SetCompletionDateToNilTasks < ActiveRecord::Migration[5.0]
  def change
    change_column_default :tasks, :completion_date, nil
  end
end
