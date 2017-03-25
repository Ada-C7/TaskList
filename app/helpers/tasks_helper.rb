module TasksHelper
  def complete_button(tsk)
    button_to tsk.completed? ?  "✓" : " " , completed_task_path(tsk.id), method: :patch
  end
end
