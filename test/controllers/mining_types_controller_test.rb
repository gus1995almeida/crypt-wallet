require 'test_helper'

class MiningTypesControllerTest < ActionController::TestCase
  setup do
    @mining_type = mining_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mining_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mining_type" do
    assert_difference('MiningType.count') do
      post :create, mining_type: { acronym: @mining_type.acronym, description: @mining_type.description }
    end

    assert_redirected_to mining_type_path(assigns(:mining_type))
  end

  test "should show mining_type" do
    get :show, id: @mining_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mining_type
    assert_response :success
  end

  test "should update mining_type" do
    patch :update, id: @mining_type, mining_type: { acronym: @mining_type.acronym, description: @mining_type.description }
    assert_redirected_to mining_type_path(assigns(:mining_type))
  end

  test "should destroy mining_type" do
    assert_difference('MiningType.count', -1) do
      delete :destroy, id: @mining_type
    end

    assert_redirected_to mining_types_path
  end
end
