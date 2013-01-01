require 'test_helper'

class TestDistrubutedBuildsControllerTest < ActionController::TestCase
  setup do
    @test_distrubuted_build = test_distrubuted_builds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_distrubuted_builds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_distrubuted_build" do
    assert_difference('TestDistrubutedBuild.count') do
      post :create, test_distrubuted_build: {  }
    end

    assert_redirected_to test_distrubuted_build_path(assigns(:test_distrubuted_build))
  end

  test "should show test_distrubuted_build" do
    get :show, id: @test_distrubuted_build
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_distrubuted_build
    assert_response :success
  end

  test "should update test_distrubuted_build" do
    put :update, id: @test_distrubuted_build, test_distrubuted_build: {  }
    assert_redirected_to test_distrubuted_build_path(assigns(:test_distrubuted_build))
  end

  test "should destroy test_distrubuted_build" do
    assert_difference('TestDistrubutedBuild.count', -1) do
      delete :destroy, id: @test_distrubuted_build
    end

    assert_redirected_to test_distrubuted_builds_path
  end
end
