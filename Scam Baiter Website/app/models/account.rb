class Account < ApplicationRecord 
    Profile account_profile
    Number account_balance # Stored in pennies
    String account_name
    LinkedList transaction_history

    def initialize(parameter_list)
        @account_profile = parameter_list[0]
        @account_balance = parameter_list[1]
        @transaction_history = parameter_list[2]
    end

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

    def add_transaction()
        
    end
end
