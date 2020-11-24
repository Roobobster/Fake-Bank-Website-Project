class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.belongs_to :subjects
      t.datetime :transaction_datetime
      t.float :amount
      t.text :message
      t.string :recipient
      t.string :payee
      t.timestamps
    end
  end
end
