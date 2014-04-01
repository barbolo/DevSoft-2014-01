##############################################################################
# Test file for exercise 4.4 (change of credit line policy).
# Do not modify this file.
##############################################################################

require_relative '../lib/checking_account'
require_relative '../lib/student_account'

puts '-------------------------------------------------------------------------'
puts 'Starting test for Exercise 4.4 (change of credit line policy)'
puts '-------------------------------------------------------------------------'

@grade = 0

# Creates the checking account that will be involved in the test.
checking_account = CheckingAccount.new

# Tries to withdraw more than the available credit line.
checking_account.withdraw(CheckingAccount::CREDIT_LINE + 100)

puts "Test case 1)"
if checking_account.balance == 0
  puts "\tOK"
else
  @grade -= 1
  puts "\tFAILED!"
  puts "\tChecking account has #{checking_account.balance}, but should have 0."
end


# Creates the student account that will be involved in the test.
student_account = StudentAccount.new

# Makes the initial deposit in the student account.
student_account.deposit(50)

# Tries to withdraw more than the available credit line.
student_account.withdraw(60)

puts "Test case 2)"
if student_account.balance == 50
  puts "\tOK"
else
  @grade -= 1
  puts "\tFAILED!"
  puts "\tStudent account has #{student_account.balance}, but should have 50."
end

puts "Test case 3)"
if student_account.monthly_fee == 0
  puts "\tOK"
else
  @grade -= 1
  puts "\tFAILED!"
  puts "\tStudent account will be charged #{student_account.monthly_fee} monthly."
end

puts '-------------------------------------------------------------------------'
puts "Result for Exercise 4.4: #{@grade == 0 ? "PASSED" : "FAILED"}"
puts "Please fix any errors and try again." if @grade < 0
puts '-------------------------------------------------------------------------'
