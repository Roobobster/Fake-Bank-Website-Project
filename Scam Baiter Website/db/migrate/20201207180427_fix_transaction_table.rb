class FixTransactionTable < ActiveRecord::Migration[5.1]
  def change
    remove_column :transactions, :recipient
    rename_column :transactions, :payee, :transactor
  end
end
