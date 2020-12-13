class TransactionsController < ApplicationController
  before_action :get_account
  before_action :set_transaction, only: [:show, :edit, :update, :delete, :destroy]

  def index
    @transactions = @account.transactions.order('transaction_datetime DESC')
  end

  def show
  end

  def new
    @transaction = @account.transactions.build(transaction_datetime: Time.now)
  end
  
  def create 
    @transaction = @account.transactions.build(transaction_params)
    if @transaction.save
      redirect_to(account_transactions_path(@account))
    else 
      render('new')
    end 
  end 

  def edit
  end

  def update 
    if @transaction.update(transaction_params)
      redirect_to(account_transactions_path(@account))
    else 
      render('edit')
    end 
  end

  def delete
  end

  def destroy
    @transaction.destroy
    redirect_to(account_transactions_path(@account))
  end 

  private 

    def get_account
      @account = Account.find(params[:account_id])
    end

    def set_transaction
      @transaction = @account.transactions.find(params[:id])
    end

    def transaction_params
      params.require(:transaction).permit(:account_id, :transaction_datetime, :amount, :transactor, :message)
    end

end
