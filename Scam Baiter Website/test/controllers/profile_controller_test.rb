require 'test_helper'

class ProfileControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get profile_view_url
    assert_response :success
  end

end
