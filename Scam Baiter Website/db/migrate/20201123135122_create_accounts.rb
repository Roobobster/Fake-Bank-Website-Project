class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.belongs_to :profiles, :foreign_key => "username"
      t.string :type
      t.float :amount

      t.timestamps
    end
  end
end
