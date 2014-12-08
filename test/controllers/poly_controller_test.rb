require 'test_helper'

class PolyControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get tickets" do
    get :tickets
    assert_response :success
  end

end
