require 'test_helper'

class SchedulesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @tues = schedules(:tues)
    @schedule = Schedule.find_by(current: true)
  end

  test "should get new" do
    get schedules_new_url
    assert_response :success
  end

  test "should get goodbye" do
    get schedules_goodbye_url
    assert_response :success
  end

  test "should show flash" do
    get schedules_new_url
    post schedules_new_path, params: { schedule: { day: "Tuesday" } }
    assert_not flash.empty?
  end

  test "new schedule should save" do
    get schedules_new_url
    assert_difference 'Schedule.count', 1 do
    post schedules_new_path, params: { schedule: { date: "8/01/2018",
                                                   time_in: "12:00:00",
                                                   day: "Tuesday" } }
     end
  end

end
