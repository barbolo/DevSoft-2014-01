class BankAccount

  attr_reader :balance, :monthly_fee

  CREDIT_LINE = 500
  MONTHLY_FEE = 20

  @@accounts  = []

  def initialize
    @account_number = (@@accounts.size + 1)
    @balance        = 0
    @statement      = []
    @monthly_fee    = MONTHLY_FEE

    @@accounts << self
  end

  def print_statement
    puts "---"
    puts "Checking account number: #{@account_number}"
    puts "Credit line: #{to_currency(CREDIT_LINE)}"
    puts "Curent balance: #{to_currency(@balance)}"
    puts "Monthly fee: #{to_currency(@monthly_fee)}"
    puts "---"

    @statement.each { |entry| puts entry }
  end

  def log_transaction(type, amount)
    @statement << "#{Time.now}\t #{type}: #{to_currency(amount)}\t\t Balance: #{to_currency(@balance)}"
  end

  def to_currency(value)
    "$#{'%.2f' % value}"
  end

end
