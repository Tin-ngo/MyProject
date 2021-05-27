require "test_helper"

class DanhmucsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get danhmucs_index_url
    assert_response :success
  end
end
