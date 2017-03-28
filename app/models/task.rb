class Task < ApplicationRecord


  def mark_complete
    if self.completion_date == nil
      self.update(completion_date: Time.now)
    end
  end


  def mark_incomplete
    if self.completion_date != nil
      self.update(completion_date: nil)
    end
  end


end
