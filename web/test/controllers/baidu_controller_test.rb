require 'test_helper'

class BaiduControllerTest < ActionDispatch::IntegrationTest
  test "should get examine" do
    get baidu_examine_url
    assert_response :success
  end

end
