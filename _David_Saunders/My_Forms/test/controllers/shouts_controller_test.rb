require 'test_helper'

class ShoutsControllerTest < ActionController::TestCase
  test "should get user_id:integer" do
    get :user_id:integer
    assert_response :success
  end

  test "should get content:text" do
    get :content:text
    assert_response :success
  end

end
