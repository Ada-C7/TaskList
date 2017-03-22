class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :string
      t.string :chore
      t.string :string
      t.string :completed
      t.string :string

      t.timestamps
    end
  end
end
