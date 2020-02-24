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
    @time.push(Time.now.strftime('%d/%-m/%Y').to_sym => @total)
  end

  def previous_day
    @time.push(Time.at(Time.now.to_i - 86400).strftime('%d/%-m/%Y') => @total)
  end

  def four_days_ago
    @time.push(Time.at(Time.now.to_i - 345600).strftime('%d/%-m/%Y') => @total)
  end

  def statement
    @time
    'date || credit || debit || balance
       ||   %{24/2/2020} ' % @time

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
