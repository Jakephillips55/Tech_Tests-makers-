class Transaction
  attr_accessor :client, :amount, :action_date, :action_type

  def initialize(amount, action_date, client)
    @amount = amount
    @action_date = action_date
    @client = client
  end
end
