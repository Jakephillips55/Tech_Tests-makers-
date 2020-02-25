# frozen_string_literal: true
# Framework for inputing date as a hash key and
# the balance total as a value
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
    @time[Time.at(Time.now.to_i - 86_400).strftime('%d/%m/%Y')] = @total
  end

  def four_days_ago
    @time[Time.at(Time.now.to_i - 345_600).strftime('%d/%m/%Y')] = @total
  end

  def statement
    puts 'date || credit || debit || balance'
    @time.each do |key, value|
      puts "#{key} || #{value}"
    end
  end
end

class Client
  attr_accessor :email

  def initialize(email)
    @email = email
  end

end
