# Write a program that prints out groups of words that are anagrams, given an array.

# Program works by making a hash out of the array, in which each key-value pair
# has the original word as the key, and the word as an array or sorted characters
# as a value. Anagrams are identified by comparing the values of the sorted character
# arrays. If they match, then the associated key is an anagram. The programs prints and
# returns groups of anagrams. Words with no anagrams are ignored.

words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live', 'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide', 'flow', 'neon']

# Create empty hash to store word + sorted word.
words_hash = {}

# Loop through array
words.each do |value|
  # For each value, create a new key/value pair in words_hash
  # Key is equal to the original string
  # Value is equal to a sorted array of characters
  # --> This will be used to identify anagrams
  words_hash[value] = value.split('').sort
end

# Hold master array of all 'matches' arrays (see below).
all_matches = []

# Loop through hash
words_hash.each do |word, anagram|

  # If the values between any two words match, they are anagrams.
  # Add the corresponding keys to an array.
  matches = words_hash.select { |k, v| v == anagram }.keys

  # Append the array of matches to the master array of matches.
  all_matches.push(matches)
end

# Prints all matches, ingoring duplicates.
all_matches.uniq.each { |match_arr| p match_arr }

# Possible improvements:
# > Rather than ignoring duplicates at the end, refactor program such that duplicates
#   are never made in the first place.
# > I can't shake the feeling that I may have over-thought or over-engineered this.
#   Kind of expecting to face-palm after seeing textbook solution, but whatever, this was fun.

# Notes after seeing the textbook solition
# > Basic principle is the same as mine, but code is more logical and concise. Instead of
#   having each word have its own 'anagram' value, each alphabetically sorted string has
#   a corresponding array of matching anagrams. Clever! This also avoids the problem of
#   creating uneccessarly duplicate arrays.
# > Other than that, I was surprised by similarity of the approach. Using split('').sort
#   to find anagrams (the testbook solution further added .join(), which I thought of, but couldn't
#   remember the name of the method), making a hash to organize the data, etc.
