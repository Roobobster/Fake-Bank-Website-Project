class Account < ApplicationRecord 

    has_many :transactions, dependent: :destroy
    belongs_to :profile

    def transfer_balance(sender_account, receiver_account, amount_to_transfer)
        if sender_account.get_account_balance() >= amount_to_transfer and amount_to_transfer > 0 # Don't transfer negative balance, don't transfer 0 currency
            sender_account.modify_balance(amount_to_transfer)
            receiver_account.modify_balance(amount_to_transfer * -1)
        end
    end

    def get_account_balance
        account_balance
    end

    def modify_balance(amount_to_modify)
        #This definitely wants more validation checks...
        account_balance = account_balance + amount_to_modify
    end

    def add_random_transactions(number_of_times = 1)
        number_of_times.times {
            newTransaction = Transaction.new(account_id: self.id)
            newTransaction.randomise
            newTransaction.save
        }
    end
end
