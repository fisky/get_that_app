require 'test_helper'

class PlanbsControllerTest < ActionController::TestCase
  setup do
    @planb = planbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:planbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create planb" do
    assert_difference('Planb.count') do
      post :create, planb: { exercise_id: @planb.exercise_id, week: @planb.week, wkday: @planb.wkday }
    end

    assert_redirected_to planb_path(assigns(:planb))
  end

  test "should show planb" do
    get :show, id: @planb
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @planb
    assert_response :success
  end

  test "should update planb" do
    patch :update, id: @planb, planb: { exercise_id: @planb.exercise_id, week: @planb.week, wkday: @planb.wkday }
    assert_redirected_to planb_path(assigns(:planb))
  end

  test "should destroy planb" do
    assert_difference('Planb.count', -1) do
      delete :destroy, id: @planb
    end

    assert_redirected_to planbs_path
  end
end
