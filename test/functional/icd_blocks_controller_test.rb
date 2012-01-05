require 'test_helper'

class IcdBlocksControllerTest < ActionController::TestCase
  setup do
    @icd_block = icd_blocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:icd_blocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create icd_block" do
    assert_difference('IcdBlock.count') do
      post :create, icd_block: @icd_block.attributes
    end

    assert_redirected_to icd_block_path(assigns(:icd_block))
  end

  test "should show icd_block" do
    get :show, id: @icd_block.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @icd_block.to_param
    assert_response :success
  end

  test "should update icd_block" do
    put :update, id: @icd_block.to_param, icd_block: @icd_block.attributes
    assert_redirected_to icd_block_path(assigns(:icd_block))
  end

  test "should destroy icd_block" do
    assert_difference('IcdBlock.count', -1) do
      delete :destroy, id: @icd_block.to_param
    end

    assert_redirected_to icd_blocks_path
  end
end
