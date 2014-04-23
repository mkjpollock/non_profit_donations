class PlansController < ApplicationController
  def new
    @plan = Plan.new
    @company = Company.new
    @company = Company.find(params[:id]) if params[:id]
  end

  def create
    @company = Company.find(params[:plan][:company_id])
    @plan = Plan.new(plan_params)
    @plan.stripeid = @plan.name.parameterize
    if @plan.save
      Stripe::Plan.create(
        :amount => @plan.amount.to_i * 100,
        :interval => @plan.interval,
        :name => @plan.name,
        :currency => @plan.currency,
        :id => @plan.stripeid
      )
      flash[:notice] = "Plan created!"
      redirect_to :back
    else
      flash[:error] = "Try again, suckah!"
      redirect_to :back
    end
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to companies_path
  end

private

  def plan_params
    params.require(:plan).permit(:amount, :interval, :name, :currency, :company_id)
  end
end
