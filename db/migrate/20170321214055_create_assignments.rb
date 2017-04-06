class CreateAssignments < ActiveRecord::Migration[5.0]
  def change
    create_table :assignments do |t|
      t.string :name
      t.string :description
      t.datetime :completion_date

      t.timestamps
    end
  end
end
