class Task < ApplicationRecord

  scope :complete, -> { where(completed: true) }
  scope :incomplete, -> { where(completed: nil) }

  def mark_complete!
    self.update_attribute(:completed, true)
  end

end
