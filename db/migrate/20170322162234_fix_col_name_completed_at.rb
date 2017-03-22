class FixColNameCompletedAt < ActiveRecord::Migration[5.0]
  def self.up
    rename_column :tasks, :completed_at, :complete_by
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end
