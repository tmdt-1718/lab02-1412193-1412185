require 'test_helper'

class BlocklistsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get blocklists_index_url
    assert_response :success
  end

end
