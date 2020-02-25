require_relative '../lib/Bank2.rb'

describe Transaction do

  it 'initializes with 3 arguments' do
    action = Transaction.new(0, '24/04/2020', 'Jake')
    expect(action.amount).to eq (0)
    expect(action.action_date).to eq('24/04/2020')
    expect(action.client).to eq('Jake')
  end
end
