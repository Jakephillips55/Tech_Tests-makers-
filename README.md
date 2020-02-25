# Tech_Tests-makers-
practice tech tests

Practice tech tests for makers week 10 to help critique my proccess when working on a TT

To install this repo click the git clone and run the url into your command line (git clone: url)

run bundle install (for rubocop)

then run rspec to see tests

if wanting to interact with my code via irb navigate to the folder then type the following
(once in tech tests > Tech_Tests)
irb
require_relative 'lib/Bank.rb' or 'lib/Bank2.rb'
 irb should put true to console
 'true'
inside irb for 'lib/Bank.rb'
  type the following
  a = Bank.new
  a.deposit(1000)
  a.input_time
  a
  a.statement

  as an example.
inside irb for 'lib/Bank2.rb'
  type the following
  b = Bank2.new('Test')
  t = Transaction.new(1000, '24/02/2020', 'Test')
  b.deposit(t)
  b.deposit(t)
  b.withdrawl(t)
  b.statement


Bank.rb works by having a class Bank with a instance variable @total and @time ={} (a hash array),  @total is either added via the deposit method (using @total += sum) or subtracted from using withdrawl (using @total -= sum) the date of entry is then saved as the key of a hash with the @total at that date/time (i have got the date using Time.now and regexp) as the value into @time = {} using the method input_time (there are also methods here to go back in time to pass the requirements) You can then see a bank statement by using the method statement to puts the results with organised output

Bank2 works by having two classes that interact with each other (Transaction and Bank2)
Transaction takes 3 arguments which are @amount @action_date and @client which are used when interacting with Bank2 inside its deposit method. Bank 2 takes 1 argument (@client) this is so that I know what account someone is depositing into.
In the same style as before deposit and withdrawal add and subtract from a total @balance (i choose not to also use total here as a name due to needing to set this value over two classes) both methods take one argument(transaction) which are labelled as Debit and Credit respectively.
the Statement method then outputs information from the Bank2 class into organised output by iterating through the array in bank (transactions) - I have used regexp to help me format this - a If else statement is provided in statement to differentiate if it is outputted in the credit or debit column
