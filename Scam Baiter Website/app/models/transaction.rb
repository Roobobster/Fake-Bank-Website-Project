class Transaction < ApplicationRecord
    belongs_to :account

    def generateRandomMessage(rand_bool)
        message_arr = rand_bool ? ["Shopping", "Clothes", "Dining", "Deposit", "Electricity bill"] : ["Refund", "Transfer", "Salary"]
        message_arr[rand(message_arr.length)]
    end

    def generateRandomAmount(rand_bool)
        random_number = (1000 * rand).round(2)
        rand_bool ? random_number * -1 : random_number
    end

    def generateRandomTransactor
        transactor_arr = ["Joe Smith", "Will Taylor", "Ellie Johnson", "Emma Jones", "Jack Brown", "Tracy Lee"]
        transactor_arr[rand(transactor_arr.length)]
    end 

    def randomise
        rand_bool = [true, false].sample
        self.amount = generateRandomAmount(rand_bool)
        self.message = generateRandomMessage(rand_bool)
        self.transactor = generateRandomTransactor
        self.transaction_datetime = Time.now
    end 
end
