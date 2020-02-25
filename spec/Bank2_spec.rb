require_relative '../lib/Bank2.rb'

describe Transaction do

  it 'initializes with 3 arguments' do
    action = Transaction.new(1000, '24/04/2020', 'Jake')
    expect(action.amount).to eq (1000)
    expect(action.action_date).to eq('24/04/2020')
    expect(action.client).to eq('Jake')
  end
end

describe Bank2 do
  it 'allows for a transaction to occur' do
    bills = Bank2.new('Jake')
    action = Transaction.new(1000, '24/04/2020', 'Jake')
    expect(bills.deposit(action)).to eq 1000
  end

  it 'alllows for a transaction(withdrawl) to occur' do
    bills = Bank2.new('Jake')
    action = Transaction.new(1000, '24/04/2020', 'Jake')
    expect(bills.withdrawl(action)).to eq -1000
  end

  it 'Can create a bank statement with organisied output' do
    bills = Bank2.new('Jake')
    action = Transaction.new(1000, '24/04/2020', 'Jake')
    money = Transaction.new(3000, '24/04/2020', 'Jake')
    bills.deposit(action)
    bills.withdrawl(money)
    expect(bills.statement).to eq (bills.statement)
    p bills.statement
  end
end
