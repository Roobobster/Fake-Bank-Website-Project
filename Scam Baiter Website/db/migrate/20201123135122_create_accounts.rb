class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :account do |t|
      t.belongs_to :profile
      t.string :type
      t.float :amount

      t.timestamps
    end
  end
end
