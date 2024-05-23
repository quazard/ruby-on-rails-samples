require "application_system_test_case"

class ReadSessionsTest < ApplicationSystemTestCase
  setup do
    @read_session = read_sessions(:one)
  end

  test "visiting the index" do
    visit read_sessions_url
    assert_selector "h1", text: "Read sessions"
  end

  test "should create read session" do
    visit read_sessions_url
    click_on "New read session"

    fill_in "Read pages", with: @read_session.read_pages
    click_on "Create Read session"

    assert_text "Read session was successfully created"
    click_on "Back"
  end

  test "should update Read session" do
    visit read_session_url(@read_session)
    click_on "Edit this read session", match: :first

    fill_in "Read pages", with: @read_session.read_pages
    click_on "Update Read session"

    assert_text "Read session was successfully updated"
    click_on "Back"
  end

  test "should destroy Read session" do
    visit read_session_url(@read_session)
    click_on "Destroy this read session", match: :first

    assert_text "Read session was successfully destroyed"
  end
end
