require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get static" do
    get dashboard_static_url
    assert_response :success
  end

end
