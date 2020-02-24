class Bank
  attr_accessor :total

  def initialize
    @total = 0
  end

  def deposit(sum)
     @total += sum
  end

  def withdrawl(sum)
    @total -= sum
  end

  def input_time
     Time.now.strftime('%d/%-m/%Y')
  end

  def history
    Time.at(Time.now.to_i - 86400).strftime('%d/%-m/%Y')
   end
end


class Client
  attr_accessor :email

  def initialize(email)
    @email = email
  end

  def email
    @email
  end
end
