class Schedule < ApplicationRecord
#  has_many :routines
  has_many :tasks
#  attr_accessor :date, :day, :schedule_id, :time_in, :time_out, :current


def current_schedule
  current_schedule = Schedule.where(current: true)
end

def hours_worked(schedule)
  (schedule.time_out - schedule.time_in)/3600
end

end
