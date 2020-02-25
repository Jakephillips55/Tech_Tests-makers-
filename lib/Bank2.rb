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
end
