class CompaniesController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :create]

  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
  end

  def new
    @company = Company.new
  end

  def edit
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])
    if params[:company]
      @company.update(company_params)
    end
      redirect_to company_path
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      flash[:notice] = "Company created!"
      redirect_to :back
    else
      redirect_to :back
    end
  end

  def destroy
    @company = Company.find(params[:id])
    @company.destroy
    redirect_to root_path
  end

private

  def company_params
    params.require(:company).permit(:name, :description, :user_id)
  end
end
