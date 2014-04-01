##############################################################################
# Test file for exercise 4.3 (implementation of salary account).
# Do not modify this file.
##############################################################################

files =  Dir[File.expand_path('../../lib/*.rb', __FILE__)]
files.each { |f| require f}

puts '-------------------------------------------------------------------------'
puts 'Starting test for Exercise 4.3 (salary account)'
puts '-------------------------------------------------------------------------'

@grade = 0

# Tries to create a salary account.
puts "Test case 1)"
begin
  account = SalaryAccount.new
  puts "\tOK"
rescue NameError
  @grade -= 1
  puts "\tFAILED!"
  puts "\tThe SalaryAccount class does not exist."
end

puts "Test case 2)"
begin
  account = SalaryAccount.new
  account.deposit(100)

  aux_account = CheckingAccount.new
  account.transfer(aux_account, 10)

  if account.balance == 100 && aux_account.balance == 0
    puts "\tOK"
  else
    @grade -= 1
    puts "\tFAILED!"
    puts "\tSalary accounts don't support transfer."
  end

rescue NameError
  @grade -= 1
  puts "\tFAILED!"
  puts "\tThe SalaryAccount class does not exist."
end

puts "Test case 3)"
begin
  account = SalaryAccount.new
  account.deposit(100)
  account.withdraw(99)

  if account.balance == 1
    puts "\tOK"
  else
    @grade -= 1
    puts "\tFAILED!"
    puts "\tWithdrawl didn't work."
  end

rescue NameError
  @grade -= 1
  puts "\tFAILED!"
  puts "\tThe SalaryAccount class does not exist."
end

puts "Test case 4)"
begin
  account = SalaryAccount.new

  if account.instance_variable_get("@monthly_fee") == BankAccount::MONTHLY_FEE / 2
    puts "\tOK"
  else
    @grade -= 1
    puts "\tFAILED!"
    puts "\tThe monthly fee for salary accounts should be smaller."
  end

rescue NameError
  @grade -= 1
  puts "\tFAILED!"
  puts "\tThe SalaryAccount class does not exist."
end


puts '-------------------------------------------------------------------------'
puts "Result for Exercise 4.3: #{@grade == 0 ? "PASSED" : "FAILED"}"
puts "Please fix any errors and try again." if @grade < 0
puts '-------------------------------------------------------------------------'
