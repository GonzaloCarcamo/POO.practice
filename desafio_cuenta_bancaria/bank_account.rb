class BankAccount
    attr_accessor :user_name
    
    def initialize(user_name, account_number, vip = 0)
        account_number = account_number.to_i
        @user_name = user_name
        if account_number.digits.count !=8
            raise RangeError.new ('Account number must have 8 digits') 
        end
        @account_number = account_number
        @vip = vip
    end

    def account_number 
        "#{@vip}-#{@account_number}"
    end
end