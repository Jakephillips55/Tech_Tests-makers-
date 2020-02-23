# practice for the tech test on monday
class Client
  attr_accessor :client, :email

  def email
    email = @email
  end

end

class Bank

  attr_accessor :total

  def initialize
    @total = 0
  end

  def deposit(value)
    @total += value
  end

  def withdrawl(value)
    @total -= value
  end

  def statement
    
  end

end

class Date_selecter
  attr_accessor :date

  def initialize
    @date = date
  end

  def history(date)
    @date = date
  end
end
