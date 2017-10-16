require 'test_helper'

class ListfriendsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get listfriends_index_url
    assert_response :success
  end

end
