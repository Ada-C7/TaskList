class ChangeDatatypeOfTasks < ActiveRecord::Migration[5.0]
  def change
    # table name, column name, datatype
    change_column 'tasks', :completion_date, :date
  end
end
