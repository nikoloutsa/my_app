require 'test_helper'

class PagesControllerTest < ActionController::TestCase

  def setup
	 @base_title = ""
  end

  test "should get home" do
    get :home
    assert_response :success
	assert_select "title","#{@base_title}Home"
  end

  test "should get help" do
    get :help
    assert_response :success
	assert_select "title","#{@base_title}Help"
  end

  test "should get about" do
    get :about
    assert_response :success
	assert_select "title","#{@base_title}About"
  end

end
