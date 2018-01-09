class Users::AvailableApplicationsController < ApplicationController
  layout :resolve_layout

  def index
    @applications = Doorkeeper::Application.all
  end

  private

  def resolve_layout
    'user'
  end

end
