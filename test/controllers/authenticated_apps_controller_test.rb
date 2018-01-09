require 'test_helper'

class AuthenticatedAppsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @authenticated_app = authenticated_apps(:one)
  end

  test "should get index" do
    get authenticated_apps_url
    assert_response :success
  end

  test "should get new" do
    get new_authenticated_app_url
    assert_response :success
  end

  test "should create authenticated_app" do
    assert_difference('AuthenticatedApp.count') do
      post authenticated_apps_url, params: { authenticated_app: { callback_url: @authenticated_app.callback_url, description: @authenticated_app.description, name: @authenticated_app.name, publishable_key: @authenticated_app.publishable_key, secret_key: @authenticated_app.secret_key } }
    end

    assert_redirected_to authenticated_app_url(AuthenticatedApp.last)
  end

  test "should show authenticated_app" do
    get authenticated_app_url(@authenticated_app)
    assert_response :success
  end

  test "should get edit" do
    get edit_authenticated_app_url(@authenticated_app)
    assert_response :success
  end

  test "should update authenticated_app" do
    patch authenticated_app_url(@authenticated_app), params: { authenticated_app: { callback_url: @authenticated_app.callback_url, description: @authenticated_app.description, name: @authenticated_app.name, publishable_key: @authenticated_app.publishable_key, secret_key: @authenticated_app.secret_key } }
    assert_redirected_to authenticated_app_url(@authenticated_app)
  end

  test "should destroy authenticated_app" do
    assert_difference('AuthenticatedApp.count', -1) do
      delete authenticated_app_url(@authenticated_app)
    end

    assert_redirected_to authenticated_apps_url
  end
end
