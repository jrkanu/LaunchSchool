# Write a method that returns true for palindrones. Case and punctuation matter.

def palindrome?(string)
  string == string.reverse
end

puts 'case sensitive version'
p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

# Write a second version in which case and punctuation don't matter.

def real_palindrome?(string)
  alphanumeric_chars_only = string.chars.select { |char| char =~ /\w/ }.join.downcase

  palindrome?(alphanumeric_chars_only)
end

puts 'case insensitive version'
p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false

# Write a version that works with integers.

def palindromic_number?(number)
  palindrome?(number.to_s)
end

puts 'number version'
p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
