class Account
  attr_accessor :balance
  def initialize(balance)
    @balance = balance
  end  
  
  attr_reader :cleared_balance  # accessor method 'cleared_balance'
  protected :cleared_balance    # and make it protected.
  def greater_balance_than(other)
    return @cleared_balance > other.cleared_balance
  end  
end

class Transaction
    def initialize(account_a, account_b)
      @account_a = account_a
      @account_b = account_b
    end
  private
    def debit(account, amount)
      account.balance -= amount
    end
    def credit(account, amount)
      account.balance += amount
    end
  public
    # ...
    def transfer(amount)
      debit(@account_a, amount)
      credit(@account_b, amount)
    end
end

savings = Account.new(100)
checking = Account.new(200)

puts "Prior to transfer:"
puts "Savings: #{savings.balance}"
puts "Checking: #{checking.balance}"

puts "Transferring $70 from checking to savings..."
trans = Transaction.new(checking, savings)
trans.transfer(70)

puts "Transfer completed. Current balances:"
puts "Savings: #{savings.balance}"
puts "Checking: #{checking.balance}"