require "test_helper"

class MoodsControllerTest < ActionDispatch::IntegrationTest
  test "should get analyze" do
    get moods_analyze_url
    assert_response :success
  end
end
