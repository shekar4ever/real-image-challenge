require 'test_helper'

class RealimagesControllerTest < ActionController::TestCase
  setup do
    @realimage = realimages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:realimages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create realimage" do
    assert_difference('Realimage.count') do
      post :create, realimage: {  }
    end

    assert_redirected_to realimage_path(assigns(:realimage))
  end

  test "should show realimage" do
    get :show, id: @realimage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @realimage
    assert_response :success
  end

  test "should update realimage" do
    patch :update, id: @realimage, realimage: {  }
    assert_redirected_to realimage_path(assigns(:realimage))
  end

  test "should destroy realimage" do
    assert_difference('Realimage.count', -1) do
      delete :destroy, id: @realimage
    end

    assert_redirected_to realimages_path
  end
end
