# Create a simple tip calculator.

def format_money(dollar_amount)
  '$' + format('%.2f', dollar_amount)
end

print 'What is the bill? '
bill = gets.chomp.to_f

print 'What is the tip percentage? '
tip_percentage = gets.chomp.to_f

tip = bill * (tip_percentage / 100)
total = bill + tip

puts "The tip is #{format_money(tip)}."
puts "The total is #{format_money(total)}."
