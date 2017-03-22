class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :action
      t.string :priority
      t.string :description
      t.string :completion

      t.timestamps
    end
  end
end
