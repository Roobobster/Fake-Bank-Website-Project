class FixTransactionTable < ActiveRecord::Migration[5.1]
  def change
    remove_column :transactions, :recipient, :string
    rename_column :transactions, :payee, :transactor
  end
end
