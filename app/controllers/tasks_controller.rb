class TasksController < ApplicationController

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.schedule_id = Schedule.last.id
    @task.save!
    if @task.save
#      @task.update_attribute(:schedule_id, @schedule.id)
      flash[:success] = "Task saved."
      redirect_to tasks_new_url
    else
      flash[:alert] = "Task not saved."
    end
  end

  def show
    @task = Task.find(params[:id])
  end

# Not only does this code not work, but also I don't believe this is the best way.
#  def task_today
#    task = Task.find_by(date: Date.today)
#    if @task == Date.today
#      @task_today = task
#    end
#  end

  private

    def task_params
      params.require(:task).permit(:schedule_id, :action, :room, :surface, :option)
    end

end
