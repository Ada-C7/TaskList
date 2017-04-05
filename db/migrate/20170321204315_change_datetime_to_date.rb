class ChangeDatetimeToDate < ActiveRecord::Migration[5.0]
  def change
    change_column :tasks, :date_complete, :date
  end
end
