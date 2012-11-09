require 'test_helper'

class SuspensionsControllerTest < ActionController::TestCase
  setup do
    @suspension = suspensions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:suspensions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create suspension" do
    assert_difference('Suspension.count') do
      post :create, suspension: { administrator: @suspension.administrator, days: @suspension.days, end_date: @suspension.end_date, grade: @suspension.grade, parent_name: @suspension.parent_name, reason: @suspension.reason, start_date: @suspension.start_date, studen_name: @suspension.studen_name, teacher: @suspension.teacher }
    end

    assert_redirected_to suspension_path(assigns(:suspension))
  end

  test "should show suspension" do
    get :show, id: @suspension
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @suspension
    assert_response :success
  end

  test "should update suspension" do
    put :update, id: @suspension, suspension: { administrator: @suspension.administrator, days: @suspension.days, end_date: @suspension.end_date, grade: @suspension.grade, parent_name: @suspension.parent_name, reason: @suspension.reason, start_date: @suspension.start_date, studen_name: @suspension.studen_name, teacher: @suspension.teacher }
    assert_redirected_to suspension_path(assigns(:suspension))
  end

  test "should destroy suspension" do
    assert_difference('Suspension.count', -1) do
      delete :destroy, id: @suspension
    end

    assert_redirected_to suspensions_path
  end
end
