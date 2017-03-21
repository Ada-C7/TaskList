class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :priority
      t.text :description
      t.date :complete_date

      t.timestamps
    end
  end
end
