require 'test_helper'

class PlancsControllerTest < ActionController::TestCase
  setup do
    @planc = plancs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plancs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create planc" do
    assert_difference('Planc.count') do
      post :create, planc: { exercise_id: @planc.exercise_id, week: @planc.week, wkday: @planc.wkday }
    end

    assert_redirected_to planc_path(assigns(:planc))
  end

  test "should show planc" do
    get :show, id: @planc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @planc
    assert_response :success
  end

  test "should update planc" do
    patch :update, id: @planc, planc: { exercise_id: @planc.exercise_id, week: @planc.week, wkday: @planc.wkday }
    assert_redirected_to planc_path(assigns(:planc))
  end

  test "should destroy planc" do
    assert_difference('Planc.count', -1) do
      delete :destroy, id: @planc
    end

    assert_redirected_to plancs_path
  end
end
