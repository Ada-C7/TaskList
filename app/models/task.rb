class Task < ApplicationRecord
  #
  def set_completed_at_time
    self.completed_at = DateTime.now
  end
end
