class AddImagesToTasks < ActiveRecord::Migration[5.0]
  def change

    add_column :tasks, :img_url, :string
  end
end
