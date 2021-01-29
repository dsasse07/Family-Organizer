require "test_helper"

class ChildrenControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get children_new_url
    assert_response :success
  end

  test "should get edit" do
    get children_edit_url
    assert_response :success
  end
end
