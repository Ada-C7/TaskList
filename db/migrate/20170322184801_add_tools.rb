class AddTools < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :tools, :string
    add_column :tasks, :tools_how_often, :string
  end
end
