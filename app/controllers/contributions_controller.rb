class ContributionsController < ApplicationController
  def new
    @company = Company.new
    @company = Company.find(params[:id]) if params[:id]
  end

  def create
    # Amount in cents
    @amount = params[:amount]
    @company = Company.find(params[:company_id])

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => @company.name,
      :currency    => 'usd',
    )
    flash[:notice] = "Donation accepted!"
    redirect_to :back
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to companies_path
  end
end
