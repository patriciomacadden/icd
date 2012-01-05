require 'test_helper'

class IcdFirstLevelCodesControllerTest < ActionController::TestCase
  setup do
    @icd_first_level_code = icd_first_level_codes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:icd_first_level_codes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create icd_first_level_code" do
    assert_difference('IcdFirstLevelCode.count') do
      post :create, icd_first_level_code: @icd_first_level_code.attributes
    end

    assert_redirected_to icd_first_level_code_path(assigns(:icd_first_level_code))
  end

  test "should show icd_first_level_code" do
    get :show, id: @icd_first_level_code.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @icd_first_level_code.to_param
    assert_response :success
  end

  test "should update icd_first_level_code" do
    put :update, id: @icd_first_level_code.to_param, icd_first_level_code: @icd_first_level_code.attributes
    assert_redirected_to icd_first_level_code_path(assigns(:icd_first_level_code))
  end

  test "should destroy icd_first_level_code" do
    assert_difference('IcdFirstLevelCode.count', -1) do
      delete :destroy, id: @icd_first_level_code.to_param
    end

    assert_redirected_to icd_first_level_codes_path
  end
end
