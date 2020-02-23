require_relative '../lib/Bank_practice.rb'

describe Client do

  it 'create a client which can be named(email)' do
  client = Client.new
  client.email = 'Test'
  expect(client.email).to eq('Test')
  end

  describe Bank do

  it 'can create a new bank balance with bal 0' do
    bank = Bank.new
    expect(bank.total).to eq(0)

  end

  it 'can deposit amount to increase sum' do
    bank = Bank.new
    expect(bank.deposit(1000)).to eq(1000)
    expect(bank.deposit(2000)).to eq(3000)

  end

  it 'can withdrawl amount to decrease sum' do
    bank = Bank.new
    expect(bank.deposit(1000)).to eq(1000)
    expect(bank.deposit(2000)).to eq(3000)
    expect(bank.withdrawl(500)).to eq(2500)
  end
  # a client makes a doposit of 1000 on 10-01-2012
  # it 'a deposit 2000 on 13-01-2012' do
  #  # .expect total.to eq(50)

  # end
  # it 'a withdrawl of 500 14-01-2012' do
  #
  # end
  # it 'client prints bank statement' do
  #
  # end
  # it 'client will see' do
  #
  # end

#           date || credit || debit || balance
# 14/01/2012 || || 500.00 || 2500.00
# 13/01/2012 || 2000.00 || || 3000.00
# 10/01/2012 || 1000.00 || || 1000.00
  end
end


# bank = Bank.new(DateWrapper.new()
#
# class DateWrapper do
#   def initialize(date) do
#     @chosenDate = date
#   end
# end
