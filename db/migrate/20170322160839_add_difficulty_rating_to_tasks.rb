class AddDifficultyRatingToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :difficulty_rating, :integer
  end
end
