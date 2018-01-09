class Users::OnboardingController < ApplicationController
  layout :resolve_layout
  before_action :authenticate_user!

  def create
    @onboarding_form = UserVerfificationForm.new(onboarding_params.merge(id: current_user.id))

    if @onboarding_form.save
      redirect_to new_users_charge_path
    else
      render :verification
    end
  end

  def new
    @onboarding_form = UserVerfificationForm.new(id: current_user.id)
    render :verification
  end

  private

    def resolve_layout
      "onboard"
    end

    def onboarding_params
      params.require(:onboarding).permit(:phone, :photo_identification)
    end
end
