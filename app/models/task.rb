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
      return ["Not yet completed", method: :patch]
    else
      return ["Completed", data: {method: :patch, confirm: "Are you sure you want to mark this task as undone?"}]
    end
  end


end #End of class Task
