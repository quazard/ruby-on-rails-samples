require "test_helper"

class ReadSessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @read_session = read_sessions(:one)
  end

  test "should get index" do
    get read_sessions_url
    assert_response :success
  end

  test "should get new" do
    get new_read_session_url
    assert_response :success
  end

  test "should create read_session" do
    assert_difference("ReadSession.count") do
      post read_sessions_url, params: { read_session: { read_pages: @read_session.read_pages } }
    end

    assert_redirected_to read_session_url(ReadSession.last)
  end

  test "should show read_session" do
    get read_session_url(@read_session)
    assert_response :success
  end

  test "should get edit" do
    get edit_read_session_url(@read_session)
    assert_response :success
  end

  test "should update read_session" do
    patch read_session_url(@read_session), params: { read_session: { read_pages: @read_session.read_pages } }
    assert_redirected_to read_session_url(@read_session)
  end

  test "should destroy read_session" do
    assert_difference("ReadSession.count", -1) do
      delete read_session_url(@read_session)
    end

    assert_redirected_to read_sessions_url
  end
end
