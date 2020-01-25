class BankAccount
    
    attr_accessor :balance
    def initialize(bank, number, balance = 0)
        @bank = bank
        @number = number 
        @balance = balance 
    end

    def transfer(amount, account)
        @balance -= amount
        account.balance += amount
    end
end

class User
    def initialize(name, accounts)
        @name = name
        @accounts = accounts
    end

    def total
        @accounts.inject(0) {|sum, account| sum + account.balance }
    end
end