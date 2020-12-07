class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :address
      t.string :telephone
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :gender
      
      t.timestamps
    end
  end
end
