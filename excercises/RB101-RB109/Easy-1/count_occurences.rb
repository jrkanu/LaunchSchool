# Write a method that counts the number of occurrences of each element in a given array.

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

# plan:
# create a hash whose keys are the unique values of the array, and whose values are initiated to 0
# interate over hash and increment value of each key for every matching occurence
# return hash

def count_occurences(array)

  # interate over array and add unique values as keys to a new hash
  unique_values = {}

  array.each do |item|
    if unique_values.keys.include?(item) == false
      unique_values[item] = 0
    end
  end
  # ------------


  # interate over hash and array, +1 the value of key for every match in array
  unique_values.each_key do |key|
    array.each do |item|
      if key == item
        unique_values[key] += 1
      end
    end
  end

  unique_values
end

# format output
count_occurences(vehicles).each do |key, value|
  puts "#{key}: #{value}"
end