##############################################################################
# Test file for exercise 4.2 (implementation of transfer between accounts).
# Do not modify this file.
##############################################################################

require_relative '../lib/checking_account'

puts '-------------------------------------------------------------------------'
puts 'Starting test for Exercise 4.2 (transfer between accounts)'
puts '-------------------------------------------------------------------------'

@grade = 0

# Creates the two accounts that will be involved in the transfer.
origin_account = CheckingAccount.new
destination_account = CheckingAccount.new

# Makes an initial deposit in the origin account.
origin_account.deposit(100)

# Calls the method that is being tested.
origin_account.transfer(destination_account, 10)

puts "Test case 1)"
if origin_account.balance == 82 && destination_account.balance == 10
  puts "\tOK"
else
  @grade -= 1
  puts "\tFAILED!"
  puts "\tOrigin account has #{origin_account.balance} and destination account has #{destination_account.balance}."
end

# Calls the method that is being tested.
origin_account.transfer(destination_account, 82)

puts "Test case 2)"
if origin_account.balance == 82 && destination_account.balance == 10
  puts "\tOK"
else
  @grade -= 1
  puts "\tFAILED!"
  puts "\tOrigin account has #{origin_account.balance} and destination account has #{destination_account.balance}."
end

# Calls the method that is being tested.
origin_account.transfer(destination_account, 74)

puts "Test case 3)"
if origin_account.balance == 0 && destination_account.balance == 84
  puts "\tOK"
else
  @grade -= 1
  puts "\tFAILED!"
  puts "\tOrigin account has #{origin_account.balance} and destination account has #{destination_account.balance}."
end

puts '-------------------------------------------------------------------------'
puts "Result for Exercise 4.2: #{@grade == 0 ? "PASSED" : "FAILED"}"
puts "Please fix any errors and try again." if @grade < 0
puts '-------------------------------------------------------------------------'
