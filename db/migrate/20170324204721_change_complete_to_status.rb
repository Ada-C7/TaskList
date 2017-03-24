class ChangeCompleteToStatus < ActiveRecord::Migration[5.0]
  def change
    remove_column :tasks, :complete
    add_column :tasks, :status, :string, :default => "incomplete"
  end
end
