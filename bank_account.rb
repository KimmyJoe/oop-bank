class BankAccount
    attr_reader :balance
    @@minimum_opening_balance = 200
    
    def initialize(opening_balance, account_holder)
      if opening_balance < @@minimum_opening_balance
        raise ArgumentError
      end
      @balance = opening_balance
    end
    
    def deposit(amount)
      @balance += amount 
    end
    
    def withdraw(amount)
        @balance -= amount
    end
    
    def transfer(amount, account)
        withdraw(amount)
        account.deposit(amount)   
    end
    
    def self.update_opening_balance(amount)
        @@minimum_opening_balance = amount 
    end 
    
    def charge(account, overdraft_account)
    if overdraft(amount) > account(balance)
        @@balance = charge(.10*amount)
        amount.deposit(overdraft_account)
        
        
end



