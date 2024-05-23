require "application_system_test_case"

class ReadRunsTest < ApplicationSystemTestCase
  setup do
    @read_run = read_runs(:one)
  end

  test "visiting the index" do
    visit read_runs_url
    assert_selector "h1", text: "Read runs"
  end

  test "should create read run" do
    visit read_runs_url
    click_on "New read run"

    fill_in "Run number", with: @read_run.run_number
    fill_in "Status", with: @read_run.status
    click_on "Create Read run"

    assert_text "Read run was successfully created"
    click_on "Back"
  end

  test "should update Read run" do
    visit read_run_url(@read_run)
    click_on "Edit this read run", match: :first

    fill_in "Run number", with: @read_run.run_number
    fill_in "Status", with: @read_run.status
    click_on "Update Read run"

    assert_text "Read run was successfully updated"
    click_on "Back"
  end

  test "should destroy Read run" do
    visit read_run_url(@read_run)
    click_on "Destroy this read run", match: :first

    assert_text "Read run was successfully destroyed"
  end
end
