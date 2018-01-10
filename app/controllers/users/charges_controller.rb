class Users::ChargesController < ApplicationController
  layout :resolve_layout

  def new
  end

  def create
    # Amount in cents
    @amount = 500

    customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      source: params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: @amount,
      description: 'Signal 0x Lock Protection',
      currency: 'usd'
    )

    redirect_to new_users_account_path
  rescue Stripe::CardError => e
    flash[:error] = e.message

    redirect_to new_users_charge_path
  end

  private

  def resolve_layout
    'user'
  end
end
