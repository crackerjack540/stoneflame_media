require 'test_helper'

class MainpagesControllerTest < ActionController::TestCase
  test "should get /" do
    root_path
    assert_response :success
  end

  test "should get podcast" do
  	get :podcast
  	assert_response :success
  end
end
