require_relative '../lib/Bank_practice.rb'

describe Client do

  it 'can create a client' do
  client = Client.new
  client.email = 'Test'
  expect(client.email).to eq('Test')
  end

  describe Bank do

  it 'a client makes a doposit of 1000 on 10-01-2012' do
    bank = Bank.new(DateWrapper.new()
    # bank.deposit(1000)

    # .expect total.to eq(50)
  end
  # it 'a deposit 2000 on 13-01-2012' do
  #
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


class DateWrapper do
  def initialize(date) do
    @chosenDate = date
  end
end
