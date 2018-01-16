class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  layout :layout_by_resource
  before_action :get_correct_subdomain


  private

  #   # override the devise helper to store the current location so we can
  #   # redirect to it after loggin in or out. This override makes signing in
  #   # and signing up work automatically.

  def get_correct_subdomain
    if user_signed_in?
      redirect_to root_url(subdomain: current_user.subdomain) if request.subdomain != current_user.subdomain
    end
  end

  def layout_by_resource
    if user_signed_in?
      'user'
    else
      'application'
    end
  end




end
