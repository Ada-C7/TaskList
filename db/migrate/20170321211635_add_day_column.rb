class AddDayColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :day, :string
    
  end
end
