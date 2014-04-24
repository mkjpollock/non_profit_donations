class RecipientsController < ApplicationController
  def new
    @company = Company.new
    @company = Company.find(params[:id]) if params[:id]
  end

  def create
    token = Stripe::Token.create(
        :bank_account => {
        :country => params[:country],
        :routing_number => params[:routing],
        :account_number => params[:account],
      },
    )
    recipient = Stripe::Recipient.create(
      :name => params[:name],
      :type => params[:type],
      :email => params[:email],
      :bank_account => token
    )
    transfer = Stripe::Transfer.create(
      :amount => params[:amount], # amount in cents
      :currency => params[:currency],
      :recipient => recipient,
      :statement_description => params[:description]
    )
    flash[:notice] = "Transfer sent!"
    redirect_to :back
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to :back
  end

# private

#   def recipient_params
#     params.require(:recipient).permit(:email, :type, :name, :bank_account)
#   end
end
