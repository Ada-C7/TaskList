class Task < ApplicationRecord

  def complete
    self.completed = DateTime.now
  end
end
