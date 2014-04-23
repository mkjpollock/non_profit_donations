class SubscriptionsController < ApplicationController
  def new
    @company = Company.new
    @company = Company.find(params[:id]) if params[:id]
  end

  def create
    @company = Company.find(params[:company_id])
    @plan = params[:plan]

    customer = Stripe::Customer.create(
      :card => params[:stripeToken],
      :plan => @plan,
      :email => params[:stripeEmail]
    )
    flash[:notice] = "Donation accepted!"
    redirect_to :back
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to companies_path
  end
end
