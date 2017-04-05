class CreateTasks < ActiveRecord::Migration[5.0]
  # def change
  #   create_table :tasks do |t|
  #     t.string :name
  #     t.string :description
  #
  #     t.timestamps
  #   end
  # end

  def up
    create_table :tasks do |t|
      t.column "name", :string
      t.string "description"

      t.timestamps
    end
  end

  def down
    drop_table :tasks
  end



end
