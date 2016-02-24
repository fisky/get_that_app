require 'test_helper'

class PlanasControllerTest < ActionController::TestCase
  setup do
    @plana = planas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:planas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plana" do
    assert_difference('Plana.count') do
      post :create, plana: { exercise_id: @plana.exercise_id, week: @plana.week, wkday: @plana.wkday }
    end

    assert_redirected_to plana_path(assigns(:plana))
  end

  test "should show plana" do
    get :show, id: @plana
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plana
    assert_response :success
  end

  test "should update plana" do
    patch :update, id: @plana, plana: { exercise_id: @plana.exercise_id, week: @plana.week, wkday: @plana.wkday }
    assert_redirected_to plana_path(assigns(:plana))
  end

  test "should destroy plana" do
    assert_difference('Plana.count', -1) do
      delete :destroy, id: @plana
    end

    assert_redirected_to planas_path
  end
end
