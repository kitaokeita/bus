require 'test_helper'

class NavControllerTest < ActionDispatch::IntegrationTest
  test "should get rere" do
    get nav_rere_url
    assert_response :success
  end

end
