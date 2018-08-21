require 'test_helper'

class CleaningControllerTest < ActionDispatch::IntegrationTest
  test "should get welcome" do
    get cleaning_welcome_url
    assert_response :success
  end

#  test "should get routine" do
#    get cleaning_routine_url
#    assert_response :success
#  end

  test "should get thanks" do
    get cleaning_thanks_url
    assert_response :success
  end

end
