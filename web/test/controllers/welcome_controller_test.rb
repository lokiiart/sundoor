require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get welcome_index_url
    assert_response :success
  end

  test "should get copytowechat" do
    get welcome_copytowechat_url
    assert_response :success
  end

end
