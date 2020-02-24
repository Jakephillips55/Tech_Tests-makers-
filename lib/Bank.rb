class Bank
  attr_accessor :total, :time

  def initialize
    @total = 0
    @time = []
  end

  def deposit(sum)
     @total += sum
  end

  def withdrawl(sum)
    @total -= sum
  end

  def input_time
    @time.push(Time.now.strftime('%d/%-m/%Y') => @total)
  end

  def history
    @time.push(Time.at(Time.now.to_i - 86400).strftime('%d/%-m/%Y') => @total)
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
