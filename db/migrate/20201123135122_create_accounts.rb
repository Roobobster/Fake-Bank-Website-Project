class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.belongs_to :profile
      t.string :account_type
      t.float :amount

      t.timestamps
    end
  end
end
