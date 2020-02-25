# frozen_string_literal: true

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
  it 'has current date as hash key' do
    bank = Bank.new
    bank.deposit(1000)
    expect(bank.input_time).to eq 1000
  end

  it 'Can display a transaction date from the previous_day' do
    bank = Bank.new
    expect(bank.previous_day).to eq 0
    # as hash is setting date as key is it implicitly tested?  Time.at(Time.now.to_i - 86400).strftime('%d/%m/%Y')
  end

  it 'Can display a transaction from 4 days ago to pass tech test' do
    bank = Bank.new
    expect(bank.four_days_ago).to eq 0
    #  Time.at(Time.now.to_i - 345600).strftime('%d/%m/%Y')
  end

  it 'Can print bank statement with organisied output' do
    bank = Bank.new
    bank.deposit(1000)
    bank.four_days_ago
    bank.deposit(2000)
    bank.previous_day
    bank.withdrawl(500)
    bank.input_time
    expect(bank.statement).to be_an(Hash)
  end

  describe Client do
    it 'Creates a client that gets a name on new object' do
      client = Client.new('Test')
      expect(client.email).to eq 'Test'
      p client.email
    end
  end
end
