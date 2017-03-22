require 'date'

class Task < ApplicationRecord

  def mark_complete
    if completion_date.nil?
      self.completion_date = DateTime.now
    end
  end
end
