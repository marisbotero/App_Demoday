require 'test_helper'

class UserUnitsControllerTest < ActionController::TestCase
  setup do
    @user_unit = user_units(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_units)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_unit" do
    assert_difference('UserUnit.count') do
      post :create, user_unit: { coment: @user_unit.coment, complete: @user_unit.complete, losingunit: @user_unit.losingunit, unit_id: @user_unit.unit_id, user_id: @user_unit.user_id }
    end

    assert_redirected_to user_unit_path(assigns(:user_unit))
  end

  test "should show user_unit" do
    get :show, id: @user_unit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_unit
    assert_response :success
  end

  test "should update user_unit" do
    patch :update, id: @user_unit, user_unit: { coment: @user_unit.coment, complete: @user_unit.complete, losingunit: @user_unit.losingunit, unit_id: @user_unit.unit_id, user_id: @user_unit.user_id }
    assert_redirected_to user_unit_path(assigns(:user_unit))
  end

  test "should destroy user_unit" do
    assert_difference('UserUnit.count', -1) do
      delete :destroy, id: @user_unit
    end

    assert_redirected_to user_units_path
  end
end
