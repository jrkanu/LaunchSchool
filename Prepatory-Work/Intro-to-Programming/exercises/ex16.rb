# 16. Take the following array and turn it into a new array that consists of
#     strings containing one word.

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

puts "original: #{a}"

words = a.map{ |x| x.split(' ')}.flatten

puts "\nbam! #{words}"
