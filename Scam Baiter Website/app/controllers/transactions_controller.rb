class TransactionsController < ApplicationController

  def index
    @transactions = Transaction.order('transaction_datetime DESC')
  end

  def show
    @transaction = Transaction.find(params[:id])
  end

  def new
  end

  def edit
    @transaction = Transaction.find(params[:id])
  end

  def delete
    @transaction = Transaction.find(params[:id])
  end

  def destroy
    @transaction = Transaction.find(params[:id])
    @transaction.destroy
    redirect_to(transactions_path)
  end 

  private 

  def transaction_params
    params.require(:transaction).permit(:transaction_datetime, :amount, :transactor, :message)
  end

end
