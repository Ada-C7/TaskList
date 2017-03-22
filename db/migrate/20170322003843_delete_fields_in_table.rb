class DeleteFieldsInTable < ActiveRecord::Migration[5.0]
  def change
    remove_column(:tasks, :name)
    remove_column(:tasks, :string)
    remove_column(:tasks, :chore)
    remove_column(:tasks, :string)
    remove_column(:tasks, :completed)
    remove_column(:tasks, :string)
  end
end
