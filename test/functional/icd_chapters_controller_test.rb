require 'test_helper'

class IcdChaptersControllerTest < ActionController::TestCase
  setup do
    @icd_chapter = icd_chapters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:icd_chapters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create icd_chapter" do
    assert_difference('IcdChapter.count') do
      post :create, icd_chapter: @icd_chapter.attributes
    end

    assert_redirected_to icd_chapter_path(assigns(:icd_chapter))
  end

  test "should show icd_chapter" do
    get :show, id: @icd_chapter.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @icd_chapter.to_param
    assert_response :success
  end

  test "should update icd_chapter" do
    put :update, id: @icd_chapter.to_param, icd_chapter: @icd_chapter.attributes
    assert_redirected_to icd_chapter_path(assigns(:icd_chapter))
  end

  test "should destroy icd_chapter" do
    assert_difference('IcdChapter.count', -1) do
      delete :destroy, id: @icd_chapter.to_param
    end

    assert_redirected_to icd_chapters_path
  end
end
