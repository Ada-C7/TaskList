class ChangeColNameForDone < ActiveRecord::Migration[5.0]
  def change
    rename_column(:tasks, :done?, :done)
  end
end
