require 'test_helper'

class SimplesControllerTest < ActionController::TestCase
  setup do
    @simple = simples(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:simples)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create simple" do
    assert_difference('Simple.count') do
      post :create, simple: { age: @simple.age, name: @simple.name }
    end

    assert_redirected_to simple_path(assigns(:simple))
  end

  test "should show simple" do
    get :show, id: @simple
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @simple
    assert_response :success
  end

  test "should update simple" do
    patch :update, id: @simple, simple: { age: @simple.age, name: @simple.name }
    assert_redirected_to simple_path(assigns(:simple))
  end

  test "should destroy simple" do
    assert_difference('Simple.count', -1) do
      delete :destroy, id: @simple
    end

    assert_redirected_to simples_path
  end
end
