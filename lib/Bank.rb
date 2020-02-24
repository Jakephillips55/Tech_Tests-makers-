class Bank
  attr_accessor :total

  def initialize
    @total = 0
  end
end

class Client
  attr_accessor :email

  def initialize(email)
    @email = email
  end

  def email
    @email
  end
end
