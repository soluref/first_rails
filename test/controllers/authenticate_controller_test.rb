require 'test_helper'

class AuthenticateControllerTest < ActionController::TestCase
  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get logoff" do
    get :logoff
    assert_response :success
  end

end
