require 'test_helper'

class ListaccquatancesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get listaccquatances_index_url
    assert_response :success
  end

end
