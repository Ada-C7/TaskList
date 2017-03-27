class AddTitleColumn < ActiveRecord::Migration[5.0]
  def change
    # add_column(table_name, column_name, data_type, options)`: Adds a column to an existing table
    add_column(:tasks, :title, :integer) #options are good to add a default 

  end
end
