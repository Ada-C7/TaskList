class AddColumnToTask < ActiveRecord::Migration[5.0]
     def change
          add_column :tasks,
          :completed_at, :date
     end
end
