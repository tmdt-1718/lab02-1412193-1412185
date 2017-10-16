require 'test_helper'

class FriendrequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @friendrequest = friendrequests(:one)
  end

  test "should get index" do
    get friendrequests_url
    assert_response :success
  end

  test "should get new" do
    get new_friendrequest_url
    assert_response :success
  end

  test "should create friendrequest" do
    assert_difference('Friendrequest.count') do
      post friendrequests_url, params: { friendrequest: {  } }
    end

    assert_redirected_to friendrequest_url(Friendrequest.last)
  end

  test "should show friendrequest" do
    get friendrequest_url(@friendrequest)
    assert_response :success
  end

  test "should get edit" do
    get edit_friendrequest_url(@friendrequest)
    assert_response :success
  end

  test "should update friendrequest" do
    patch friendrequest_url(@friendrequest), params: { friendrequest: {  } }
    assert_redirected_to friendrequest_url(@friendrequest)
  end

  test "should destroy friendrequest" do
    assert_difference('Friendrequest.count', -1) do
      delete friendrequest_url(@friendrequest)
    end

    assert_redirected_to friendrequests_url
  end
end
