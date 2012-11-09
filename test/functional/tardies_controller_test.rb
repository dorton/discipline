require 'test_helper'

class TardiesControllerTest < ActionController::TestCase
  setup do
    @tardy = tardies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tardies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tardy" do
    assert_difference('Tardy.count') do
      post :create, tardy: { parent_address: @tardy.parent_address, parent_name: @tardy.parent_name, studen_first_name: @tardy.studen_first_name, student_last_name: @tardy.student_last_name, tardy_days: @tardy.tardy_days }
    end

    assert_redirected_to tardy_path(assigns(:tardy))
  end

  test "should show tardy" do
    get :show, id: @tardy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tardy
    assert_response :success
  end

  test "should update tardy" do
    put :update, id: @tardy, tardy: { parent_address: @tardy.parent_address, parent_name: @tardy.parent_name, studen_first_name: @tardy.studen_first_name, student_last_name: @tardy.student_last_name, tardy_days: @tardy.tardy_days }
    assert_redirected_to tardy_path(assigns(:tardy))
  end

  test "should destroy tardy" do
    assert_difference('Tardy.count', -1) do
      delete :destroy, id: @tardy
    end

    assert_redirected_to tardies_path
  end
end
