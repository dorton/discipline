require 'test_helper'

class DetentionsControllerTest < ActionController::TestCase
  setup do
    @detention = detentions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:detentions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detention" do
    assert_difference('Detention.count') do
      post :create, detention: { detention_date: @detention.detention_date, grade: @detention.grade, parent_name: @detention.parent_name, reason: @detention.reason, student_name: @detention.student_name, teacher: @detention.teacher, today: @detention.today }
    end

    assert_redirected_to detention_path(assigns(:detention))
  end

  test "should show detention" do
    get :show, id: @detention
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detention
    assert_response :success
  end

  test "should update detention" do
    put :update, id: @detention, detention: { detention_date: @detention.detention_date, grade: @detention.grade, parent_name: @detention.parent_name, reason: @detention.reason, student_name: @detention.student_name, teacher: @detention.teacher, today: @detention.today }
    assert_redirected_to detention_path(assigns(:detention))
  end

  test "should destroy detention" do
    assert_difference('Detention.count', -1) do
      delete :destroy, id: @detention
    end

    assert_redirected_to detentions_path
  end
end
