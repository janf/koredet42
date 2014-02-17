require 'test_helper'

class LocationClassesControllerTest < ActionController::TestCase
  setup do
    @location_class = location_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:location_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create location_class" do
    assert_difference('LocationClass.count') do
      post :create, location_class: {  }
    end

    assert_redirected_to location_class_path(assigns(:location_class))
  end

  test "should show location_class" do
    get :show, id: @location_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @location_class
    assert_response :success
  end

  test "should update location_class" do
    patch :update, id: @location_class, location_class: {  }
    assert_redirected_to location_class_path(assigns(:location_class))
  end

  test "should destroy location_class" do
    assert_difference('LocationClass.count', -1) do
      delete :destroy, id: @location_class
    end

    assert_redirected_to location_classes_path
  end
end
