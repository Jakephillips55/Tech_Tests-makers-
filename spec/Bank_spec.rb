require_relative '../lib/Bank.rb'

describe Bank do

  it 'can create a new bank balance with bal 0' do
    bank = Bank.new
    expect(bank.total).to eq(0)
  end

  it 'Can deposit to increase total bal' do
    bank = Bank.new
    expect(bank.deposit(1000)).to eq(1000)
    expect(bank.deposit(2000)).to eq(3000)
  end

  it 'Can withdrawl to decrease the total bal' do
    bank = Bank.new
    bank.deposit(3000)
    expect(bank.withdrawl(500)).to eq(2500)
  end
  it 'Displays the current date' do
    bank = Bank.new
    expect(bank.input_time.pop).to eq Time.now.strftime('%d/%-m/%Y') => 0
    p Time.now.strftime('%d/%-m/%Y')
  end
  it 'Can display a transaction date from the previous_day' do
    bank = Bank.new
    expect(bank.previous_day.pop).to eq Time.at(Time.now.to_i - 86400).strftime('%d/%-m/%Y') => 0
  end

  it 'Can display a transaction from 4 days ago to pass tech test' do
    bank = Bank.new
    expect(bank.four_days_ago.pop).to eq Time.at(Time.now.to_i - 345600).strftime('%d/%-m/%Y') => 0
  end
end

describe Client do
  it 'Creates a client that gets a name on new object' do
  client = Client.new('Test')
  expect(client.email).to eq 'Test'
  p client.email
 end
end
