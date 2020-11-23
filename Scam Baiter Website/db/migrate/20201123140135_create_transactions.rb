class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transaction do |t|
      t.string :account_id
      t.datetime :transaction_datetime
      t.float :amount
      t.text :message
      t.string :recipient
      t.string :payee
      t.timestamps
    end
  end
end
