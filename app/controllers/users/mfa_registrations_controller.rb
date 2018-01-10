class Users::MfaRegistrationsController < ApplicationController

  def new
    # Generate one for each version of U2F, currently only `U2F_V2`
    # @registration_requests = u2f.registration_requests
    #
    # # Store challenges. We need them for the verification step
    # session[:challenges] = @registration_requests.map(&:challenge)
    #
    # # Fetch existing Registrations from your db and generate SignRequests
    # key_handles = Registration.map(&:key_handle)
    # @sign_requests = u2f.authentication_requests(key_handles)
    #
    # @app_id = u2f.app_id
    #
    # render 'mfa/register'
  end

  def create
    # response = U2F::RegisterResponse.load_from_json(params[:response])
    #
    # reg = begin
    #   u2f.register!(session[:challenges], response)
    # rescue U2F::Error => e
    #   return "Unable to register: <%= e.class.name %>"
    # ensure
    #   session.delete(:challenges)
    # end
    #
    # # save a reference to your database
    # Registration.create!(certificate: reg.certificate,
    #                      key_handle:  reg.key_handle,
    #                      public_key:  reg.public_key,
    #                      counter:     reg.counter)
    #
    # 'Registered!'
  end

end
