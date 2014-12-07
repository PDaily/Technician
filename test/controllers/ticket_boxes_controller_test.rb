require 'test_helper'

class TicketBoxesControllerTest < ActionController::TestCase
  setup do
    @ticket_box = ticket_boxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ticket_boxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ticket_box" do
    assert_difference('TicketBox.count') do
      post :create, ticket_box: {  }
    end

    assert_redirected_to ticket_box_path(assigns(:ticket_box))
  end

  test "should show ticket_box" do
    get :show, id: @ticket_box
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ticket_box
    assert_response :success
  end

  test "should update ticket_box" do
    patch :update, id: @ticket_box, ticket_box: {  }
    assert_redirected_to ticket_box_path(assigns(:ticket_box))
  end

  test "should destroy ticket_box" do
    assert_difference('TicketBox.count', -1) do
      delete :destroy, id: @ticket_box
    end

    assert_redirected_to ticket_boxes_path
  end
end
