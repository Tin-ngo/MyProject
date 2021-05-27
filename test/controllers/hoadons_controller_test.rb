require "test_helper"

class HoadonsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hoadons_index_url
    assert_response :success
  end
end
