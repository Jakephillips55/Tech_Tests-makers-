# frozen_string_literal: true

require_relative '../lib/Bank2.rb'

describe Transaction do
  it 'initializes with 3 arguments' do
    action = Transaction.new(1000.00, '24/04/2020', 'Jake')
    expect(action.amount).to eq 1000.00
    expect(action.transaction_date).to eq('24/04/2020')
    expect(action.client).to eq('Jake')
  end
end

describe Bank2 do
  it 'allows for a transaction to occur' do
    bills = Bank2.new('Jake')
    action = Transaction.new(1000.00, '24/04/2020', 'Jake')
    expect(bills.deposit(action)).to eq 1000.00
  end

  it 'alllows for a transaction(withdrawl) to occur' do
    bills = Bank2.new('Jake')
    action = Transaction.new(1000.00, '24/04/2020', 'Jake')
    expect(bills.withdrawl(action)).to eq -1000.00
  end

  it 'Can create a bank statement with organisied output' do
    bills = Bank2.new('Jake')
    action = Transaction.new(1000.00, '24/04/2020', 'Jake')
    money = Transaction.new(3000.00, '24/04/2020', 'Jake')
    bills.deposit(money)
    bills.withdrawl(action)
    expect(bills.statement).to be_an(Array)
  end
end
