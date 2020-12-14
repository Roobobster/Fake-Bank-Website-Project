class Account < ApplicationRecord 
    has_many :transactions
    #belongs_to :profile
end
