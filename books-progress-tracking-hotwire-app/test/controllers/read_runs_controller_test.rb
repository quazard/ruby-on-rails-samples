require "test_helper"

class ReadRunsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @read_run = read_runs(:one)
  end

  test "should get index" do
    get read_runs_url
    assert_response :success
  end

  test "should get new" do
    get new_read_run_url
    assert_response :success
  end

  test "should create read_run" do
    assert_difference("ReadRun.count") do
      post read_runs_url, params: { read_run: { run_number: @read_run.run_number, status: @read_run.status } }
    end

    assert_redirected_to read_run_url(ReadRun.last)
  end

  test "should show read_run" do
    get read_run_url(@read_run)
    assert_response :success
  end

  test "should get edit" do
    get edit_read_run_url(@read_run)
    assert_response :success
  end

  test "should update read_run" do
    patch read_run_url(@read_run), params: { read_run: { run_number: @read_run.run_number, status: @read_run.status } }
    assert_redirected_to read_run_url(@read_run)
  end

  test "should destroy read_run" do
    assert_difference("ReadRun.count", -1) do
      delete read_run_url(@read_run)
    end

    assert_redirected_to read_runs_url
  end
end
