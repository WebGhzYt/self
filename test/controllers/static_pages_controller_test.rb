require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get help" do
    get :help
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get privacy" do
    get :privacy
    assert_response :success
  end

  test "should get sitemap" do
    get :sitemap
    assert_response :success
  end

  test "should get disclaimer" do
    get :disclaimer
    assert_response :success
  end

  test "should get everything" do
    get :everything
    assert_response :success
  end

end
