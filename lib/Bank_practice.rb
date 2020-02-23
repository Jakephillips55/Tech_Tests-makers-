# practice for the tech test on monday
class Client
  attr_accessor :client, :email

  def email
    email = @email
  end

end

class Bank
  # BALANCE = 0
# def initialize(dateWrapper)
#   @dateWrapper = dateWrapper
# end

  attr_accessor :total, :sum
# => :total, :amount
#
  def initialize
    @total = 0
    @sum = 1000
  end

  def deposit
    @sum += @total

  end
#
#   def withdrawl
#
#   end
#
end
