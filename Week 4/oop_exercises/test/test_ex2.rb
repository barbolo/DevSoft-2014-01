require_relative '../lib/checking_account'

puts 'Testing exercise 2'

origin_account = CheckingAccount.new
destination_account = CheckingAccount.new

origin_account.deposit(100)
origin_account.print_statement

puts '+++++'

destination_account.print_statement

origin_account.transfer(destination_account, 10)

if origin_account.balance == 81.8 && destination_account.balance == 10
  puts "Test passed!"
else
  puts "Test failed!"
  puts "origin_account has #{origin_account.balance} and destination_account has #{destination_account.balance}"
end

origin_account.transfer(destination_account, 81.8)

if origin_account.balance == 81.8 && destination_account.balance == 10
  puts "Test passed!"
else
  puts "Test failed!"
  puts "origin_account has #{origin_account.balance} and destination_account has #{destination_account.balance}"
end

origin_account.transfer(destination_account, (81.8 - 8.2))

if origin_account.balance == 0 && destination_account.balance == (10 + (81.8 - 8.2))
  puts "Test passed!"
else
  puts "Test failed!"
  puts "origin_account has #{origin_account.balance} and destination_account has #{destination_account.balance}"
end
