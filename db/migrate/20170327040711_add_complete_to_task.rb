class AddCompleteToTask < ActiveRecord::Migration[5.0]
  def change
    add_column :completion_date
  end
end
