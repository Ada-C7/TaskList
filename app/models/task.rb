class Task < ApplicationRecord

  def status_change
    if completion_date == nil
      update(completion_date: Time.now)
    else
      update(completion_date: nil)
    end
  end

  def status_info
    if completion_date == nil
      "Not yet completed"
    else
      "Completed"
    end
  end


end #End of class Task
