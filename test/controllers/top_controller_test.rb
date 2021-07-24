require 'test_helper'

class TopControllerTest < ActionDispatch::IntegrationTest
  test "should get index:string" do
    get top_index:string_url
    assert_response :success
  end

end
