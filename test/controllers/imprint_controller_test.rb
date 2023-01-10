require "test_helper"

class ImprintControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get imprint_index_url
    assert_response :success
  end
end
