require "test_helper"

class TrangchusControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get trangchus_index_url
    assert_response :success
  end
end
