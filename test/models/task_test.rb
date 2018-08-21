require 'test_helper'

class TaskTest < ActiveSupport::TestCase

  def setup
    @task = Task.new(action: "action", room: "room", surface: "surface")
  end

   test "blank fields do not save" do
     @task.action = "    "
     assert_not( @task.valid? )
   end
end
