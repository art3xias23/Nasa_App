require 'test_helper'

class IssMapControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get iss_map_index_url
    assert_response :success
  end

end
