class Bank
  attr_accessor :total, :time

  def initialize
    @total = 0
    @time = {}
  end

  def deposit(sum)
     @total += sum
  end

  def withdrawl(sum)
    @total -= sum
  end

  def input_time
    @time[Time.now.strftime('%d/%m/%Y')] = @total
  end

  def previous_day
    @time[Time.at(Time.now.to_i - 86400).strftime('%d/%m/%Y')] = @total
  end

  def four_days_ago
    @time[Time.at(Time.now.to_i - 345600).strftime('%d/%m/%Y')] = @total
  end

  def statement
      puts "date || credit || debit || balance"
    @time.each { |key, value|

     puts "#{key} || #{value} "}
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
