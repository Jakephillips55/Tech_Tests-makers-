require_relative '../lib/Bank.rb'

describe Bank do

  it 'can create a new bank balance with bal 0' do
    bank = Bank.new
    expect(bank.total).to eq(0)

  end
end

describe Client do
  it 'Creates a client that gets a name on new object' do
  client = Client.new('Test')
  expect(client.email).to eq 'Test'
  p client.email
 end
end
