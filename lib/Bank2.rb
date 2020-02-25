class Transaction
  attr_accessor :client, :amount, :action_date, :action_type

  def initialize(amount, action_date, client)
    @amount = amount
    @action_date = action_date
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
    transaction.action_type = 'Credit'
    @transactions.push(transaction)
    @balance += transaction.amount
  end

  def withdrawl(transaction)
    transaction.action_type = 'Debit'
    @transactions.push transaction
    @balance -= transaction.amount
  end

  def statement
    puts "Statement for #{@client} "
    format = '%-10s %-8s %-8s %-10s'
    transactions.each do |action|
      puts format % ['Date', 'Credit', 'Debit', 'Balance']
      if action.action_type = 'Debit'
        puts format % [ action.action_date, 0, action.amount, @balance ]
      else
        puts format % [ action.action_date, action.amount, 0, @balance ]
      end
    end
 end
end
