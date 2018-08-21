class SchedulesController < ApplicationController
# before_action :clock_in

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(schedule_params)
    @schedule.save!
    if @schedule.save
      @schedule.update_attribute(:current, true)
  # => Use this line to invoke routines at the end of the process.
      flash[:success] = "Happy cleaning!"
      redirect_to tasks_new_url
    else
      flash[:alert] = "Oh no!"

  # => Use these lines to invoke routines at the beginning of the process.
  #    redirect_to routines_new_url
    end
  end

  def goodbye
#    @schedule = current_schedule
#    @task = current_task
#    @current_schedule = Schedule.where(current: true)
    @schedule = Schedule.find_by(current: true) #id: @current_schedule)
#    @current_tasks = @schedule.tasks
#    @task = Task.find_by(schedule_id: @current_schedule)

#    if @schedule == Date.today
      render 'goodbye'
#    end
  end

  def edit
    @schedule = Schedule.where(current: true)
    if @schedule.current?
      render 'schedules/edit'
    end
  end

  def update
    @schedule = Schedule.find_by(id: Schedule.last)
    if @schedule.update_attributes(schedule_params)
      @schedule.update_attribute(:current, false)
      flash[:success] = "Thank you for your service!"
      redirect_to schedules_path
    else
      render 'goodbye'
    end
  end

  def today
    task = Task.find_by(date: Date.today)
    if @task == Date.today
      @task_today = task
    end
  end

  def index
    @schedules = Schedule.all
  end

  def show
    @schedule = Schedule.find_by(id: params[:id])
    @tasks = @schedule.tasks
  end

  private

    def current_schedule
      @schedule = Schedule.find_by(current: params[:current])
    end

    def schedule_params
      params.require(:schedule).permit(:date, :day, :time_in, :time_out, :current, :id, :desc)
    end

    def hours_worked(schedule)
      (schedule.time_out - schedule.time_in)/2400
    end

end
