module TasksHelper
  def task_params
    params.require(:task).permit(:name, :description, :completed_at)
  end
end
