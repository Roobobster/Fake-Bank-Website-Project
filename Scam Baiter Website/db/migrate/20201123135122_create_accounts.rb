class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.belongs_to :profiles
      t.string :type
      t.float :amount

      t.timestamps
    end
  end
end
