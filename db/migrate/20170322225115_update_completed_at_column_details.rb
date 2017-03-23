class UpdateCompletedAtColumnDetails < ActiveRecord::Migration[5.0]
  def self.up
    rename_column :tasks, :completed_at, :completed_by
    change_column :tasks, :completed_by, :datetime
  end
end
