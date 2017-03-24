class ChangeCompetedAtInTask < ActiveRecord::Migration[5.0]
  def change
      change_column :tasks, :completed_at, :datetime, :default => false
  end
end
