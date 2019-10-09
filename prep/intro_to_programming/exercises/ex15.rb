# 15. Use Ruby's Array method delete_if and String method start_with? to delete all
#     of the words that begin with an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |s| s.start_with? 's' }
puts "'s' begone! #{arr}"

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
puts "\njk lol #{arr}"

arr.delete_if { |s| s.start_with?('s','w') }
puts "\nno but rly, all i need is #{arr}"
