# split string into array of letters
# for each letter in letter array, get ascii value
# map value of each letter to new array
# return sum of array

def split_string_into_char_array(string)
  string.split('')
end

def get_ascii_values(char_array)
  ascii_values = char_array.map {|char| char.ord}
end

def sum_ascii_values(ascii_values)
  ascii_values.sum
end

def ascii_value(string)
  sum_ascii_values(get_ascii_values(split_string_into_char_array(string)))
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0