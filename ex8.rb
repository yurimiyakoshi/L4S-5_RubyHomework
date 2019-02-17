class Account
  attr_accessor :balance
  def initialize
    @balance = 0
  end

  def deposit(x)
    @balance = @balance + x
  end

  def withdraw(x)
    if @balance < x
      puts "残高が不足しています"
      false
    else
      @balance = @balance - x
      true
    end
  end

  def transfer(a, x)
    unless withdraw(x)
    else
      withdraw(x)
      a.deposit(x)
    end
  end
end


a = Account.new
a.deposit(4000)
b = Account.new
b.deposit(1000)
b.withdraw(500)
a.transfer(b, 6000)
puts a.balance
puts b.balance
b.transfer(a, 5000)