require 'test_helper'

class ProduitsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get creation" do
    get :creation
    assert_response :success
  end

  test "should get edition" do
    get :edition
    assert_response :success
  end

end
