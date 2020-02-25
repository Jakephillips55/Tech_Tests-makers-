# frozen_string_literal: true

class Transaction
  attr_accessor :client, :amount, :transaction_date, :transaction_type

  def initialize(amount, transaction_date, client)
    @amount = amount
    @transaction_date = transaction_date
    @client = client
  end
end

class Bank2
  attr_accessor :balance, :transactions
  def initialize(client)
    @client = client
    @balance = 0
    @transactions = []
  end

  def deposit(transaction)
    transaction.transaction_type = 'Credit'
    @transactions.push(transaction)
    @balance += transaction.amount
  end

  def withdrawl(transaction)
    transaction.transaction_type = 'Debit'
    @transactions.push transaction
    @balance -= transaction.amount
  end

  def statement
    puts "Statement for #{@client} "
    format = '%-10s %-8s %-8s %-10s'
    transactions.each do |action|
      puts format(format, 'Date', 'Credit', 'Debit', 'Balance')
      if action.transaction_type = 'Debit'
        puts format(format, action.transaction_date, 0, action.amount, @balance)
      else
        puts format(format, action.transaction_date, action.amount, 0, @balance)
      end
    end
 end
end
