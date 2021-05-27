require "test_helper"

class CuahangsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cuahangs_index_url
    assert_response :success
  end
end
