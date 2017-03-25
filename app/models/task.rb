class Task < ApplicationRecord
  def reverse_complete
    completed_at != nil ? update_attributes(completed_at: nil) :
      update_attributes(completed_at: Date.today.strftime('%a %d %b %Y'))
  end
end
