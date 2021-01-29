require "test_helper"

class FamiliesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get families_show_url
    assert_response :success
  end
end
