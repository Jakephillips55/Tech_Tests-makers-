require_relative '../lib/Bank.rb'

describe Client do
  it 'Creates a client' do
  client = Client.new
  expect(client.email).to eq('Test')
 end
end
