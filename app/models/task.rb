require 'date'

class Task < ApplicationRecord

  def mark_complete
    self.completion_date = DateTime.now if completion_date.nil?
  end

  def mark_incomplete
    self.completion_date = nil
  end
end
