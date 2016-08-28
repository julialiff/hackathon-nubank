require 'test_helper'

class CmessagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cmessage = cmessages(:one)
  end

  test "should get index" do
    get cmessages_url
    assert_response :success
  end

  test "should get new" do
    get new_cmessage_url
    assert_response :success
  end

  test "should create cmessage" do
    assert_difference('Cmessage.count') do
      post cmessages_url, params: { cmessage: { consultant_id: @cmessage.consultant_id, message: @cmessage.message, user_id: @cmessage.user_id } }
    end

    assert_redirected_to cmessage_url(Cmessage.last)
  end

  test "should show cmessage" do
    get cmessage_url(@cmessage)
    assert_response :success
  end

  test "should get edit" do
    get edit_cmessage_url(@cmessage)
    assert_response :success
  end

  test "should update cmessage" do
    patch cmessage_url(@cmessage), params: { cmessage: { consultant_id: @cmessage.consultant_id, message: @cmessage.message, user_id: @cmessage.user_id } }
    assert_redirected_to cmessage_url(@cmessage)
  end

  test "should destroy cmessage" do
    assert_difference('Cmessage.count', -1) do
      delete cmessage_url(@cmessage)
    end

    assert_redirected_to cmessages_url
  end
end
