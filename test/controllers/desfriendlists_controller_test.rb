require 'test_helper'

class DesfriendlistsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get desfriendlists_index_url
    assert_response :success
  end

end
