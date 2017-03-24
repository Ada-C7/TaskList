class AddCompletedDateToTasks < ActiveRecord::Migration[5.0]
  def change
    change_table :tasks do |t|
      t.datetime :completed_date
    end
  end
end
