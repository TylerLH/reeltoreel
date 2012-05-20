require 'test_helper'

class ShowtimesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
