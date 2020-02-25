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
