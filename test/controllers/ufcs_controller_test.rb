require 'test_helper'

class UfcsControllerTest < ActionController::TestCase
  setup do
    @ufc = ufcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ufcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ufc" do
    assert_difference('Ufc.count') do
      post :create, ufc: { date: @ufc.date, name: @ufc.name, where: @ufc.where }
    end

    assert_redirected_to ufc_path(assigns(:ufc))
  end

  test "should show ufc" do
    get :show, id: @ufc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ufc
    assert_response :success
  end

  test "should update ufc" do
    patch :update, id: @ufc, ufc: { date: @ufc.date, name: @ufc.name, where: @ufc.where }
    assert_redirected_to ufc_path(assigns(:ufc))
  end

  test "should destroy ufc" do
    assert_difference('Ufc.count', -1) do
      delete :destroy, id: @ufc
    end

    assert_redirected_to ufcs_path
  end
end
