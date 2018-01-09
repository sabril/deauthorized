require 'test_helper'

class IssueShutdownsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @issue_shutdown = issue_shutdowns(:one)
  end

  test "should get index" do
    get issue_shutdowns_url
    assert_response :success
  end

  test "should get new" do
    get new_issue_shutdown_url
    assert_response :success
  end

  test "should create issue_shutdown" do
    assert_difference('IssueShutdown.count') do
      post issue_shutdowns_url, params: { issue_shutdown: { authenticated_app_id: @issue_shutdown.authenticated_app_id, id_verification: @issue_shutdown.id_verification, request_made: @issue_shutdown.request_made } }
    end

    assert_redirected_to issue_shutdown_url(IssueShutdown.last)
  end

  test "should show issue_shutdown" do
    get issue_shutdown_url(@issue_shutdown)
    assert_response :success
  end

  test "should get edit" do
    get edit_issue_shutdown_url(@issue_shutdown)
    assert_response :success
  end

  test "should update issue_shutdown" do
    patch issue_shutdown_url(@issue_shutdown), params: { issue_shutdown: { authenticated_app_id: @issue_shutdown.authenticated_app_id, id_verification: @issue_shutdown.id_verification, request_made: @issue_shutdown.request_made } }
    assert_redirected_to issue_shutdown_url(@issue_shutdown)
  end

  test "should destroy issue_shutdown" do
    assert_difference('IssueShutdown.count', -1) do
      delete issue_shutdown_url(@issue_shutdown)
    end

    assert_redirected_to issue_shutdowns_url
  end
end
