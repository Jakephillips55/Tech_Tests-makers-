require_relative '../lib/Bank.rb'

describe Client do
  it 'Creates a client that gets a name on new object' do
  client = Client.new('Test')
  expect(client.email).to eq 'Test'
  p client.email
 end
end
