class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.datetime :date_complete
      t.string :context

      t.timestamps
    end
  end
end
