module SchedulesHelper

  def last_task
    @last_tasks = Task.where(schedule_id: Schedule.last)
  end

end
