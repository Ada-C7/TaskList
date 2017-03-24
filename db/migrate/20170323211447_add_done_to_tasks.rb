class AddDoneToTasks < ActiveRecord::Migration[5.0]
  def change
    change_table :tasks do |t|
      t.boolean :done
    end
  end
end
