require 'test_helper'

class RestoreAccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restore_account = restore_accounts(:one)
  end

  test "should get index" do
    get restore_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_restore_account_url
    assert_response :success
  end

  test "should create restore_account" do
    assert_difference('RestoreAccount.count') do
      post restore_accounts_url, params: { restore_account: { authenticated_app_id: @restore_account.authenticated_app_id, email_reset: @restore_account.email_reset, id_verification: @restore_account.id_verification, password_reset: @restore_account.password_reset, request_issued: @restore_account.request_issued } }
    end

    assert_redirected_to restore_account_url(RestoreAccount.last)
  end

  test "should show restore_account" do
    get restore_account_url(@restore_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_restore_account_url(@restore_account)
    assert_response :success
  end

  test "should update restore_account" do
    patch restore_account_url(@restore_account), params: { restore_account: { authenticated_app_id: @restore_account.authenticated_app_id, email_reset: @restore_account.email_reset, id_verification: @restore_account.id_verification, password_reset: @restore_account.password_reset, request_issued: @restore_account.request_issued } }
    assert_redirected_to restore_account_url(@restore_account)
  end

  test "should destroy restore_account" do
    assert_difference('RestoreAccount.count', -1) do
      delete restore_account_url(@restore_account)
    end

    assert_redirected_to restore_accounts_url
  end
end
