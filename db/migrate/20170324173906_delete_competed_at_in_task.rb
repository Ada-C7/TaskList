class DeleteCompetedAtInTask < ActiveRecord::Migration[5.0]
    def change
        remove_column :tasks, :completed_at, :datetime, :default => false
    end
end
