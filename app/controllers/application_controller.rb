class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  layout :layout_by_resource


  private

  #   # override the devise helper to store the current location so we can
  #   # redirect to it after loggin in or out. This override makes signing in
  #   # and signing up work automatically.

  def layout_by_resource
    if devise_controller? and user_signed_in?
      'user'
    else
      'application'
    end
  end




end
