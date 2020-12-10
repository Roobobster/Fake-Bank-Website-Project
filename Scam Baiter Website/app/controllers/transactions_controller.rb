class TransactionsController < ApplicationController

  # Go to http://localhost:3000/transactions to see all transactions in your database for now 

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

  def update 
    @transaction = Transaction.find(params[:id])
    if @transaction.update(transaction_params)
      redirect_to(transaction_path(@transaction))
    else 
      render('edit')
    end 
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
