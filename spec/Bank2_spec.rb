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
end
