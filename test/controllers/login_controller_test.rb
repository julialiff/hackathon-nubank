require 'test_helper'

class LoginControllerTest < ActionDispatch::IntegrationTest
  test "should get consultant" do
    get login_consultant_url
    assert_response :success
  end

end
