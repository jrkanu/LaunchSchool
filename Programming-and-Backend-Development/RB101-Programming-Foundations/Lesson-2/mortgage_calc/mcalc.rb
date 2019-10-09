# Mortgage Calculator

def parse_loan_data(data)
  # Get all data at once and return as array.
  data_array = data.split(',')
  principal = data_array[0].to_f
  apr = (data_array[1].to_f / 100)
  duration_in_months = data_array[2].to_f

  return principal, apr, duration_in_months
end

def calc_monthly_interest_rate(apr)
  apr / 12
end

def calc_monthly_payment(loan_data)
  principal = loan_data[0]
  apr = loan_data[1]
  duration_in_months = loan_data[2]
  monthly_interest_rate = calc_monthly_interest_rate(apr)

  monthly_payment = principal * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**-duration_in_months))
  monthly_payment
end

def prompt(msg)
  print ">> " + msg + "\n>> "
end

prompt('Enter the amount of the loan, the APR and the duration of the loan in months, separated by commas.')
loan_data = gets.chomp

monthly_payment = calc_monthly_payment(parse_loan_data(loan_data))

puts ">> The monthly payment on this loan is $#{format('%.2f', monthly_payment)}."
