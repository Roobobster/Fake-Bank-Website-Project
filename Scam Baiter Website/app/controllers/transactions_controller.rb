class TransactionsController < ApplicationController

  # Go to http://localhost:3000/transactions to see all transactions in your database for now 

  def index
    @transactions = Transaction.order('transaction_datetime DESC')
    # @account = Account.find(5)
    # @account.add_random_transactions
    # p @account.transactions
  end

  def show
    @transaction = Transaction.find(params[:id])
  end

  def new
    @transaction = Transaction.new(account_id: 6, transaction_datetime: Time.now)
  end
  
  def create 
    @transaction = Transaction.new(transaction_params)
    if @transaction.save
      redirect_to(transactions_path)
    else 
      render('new')
    end 
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
    params.require(:transaction).permit(:account_id, :transaction_datetime, :amount, :transactor, :message)
  end

end
