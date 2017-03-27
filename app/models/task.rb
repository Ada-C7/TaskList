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
      return ["status_notdone1.png", method: :patch]
    else
      return ["status_done1.png", data: {method: :patch, confirm: "Are you sure you want to mark this task as undone?"}]
    end
  end


end #End of class Task
