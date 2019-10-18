# 1.) Turn this array into a hash where the names are the keys and the values
#     are the positions in the array.

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones_hash = {}

flintstones.each_with_index do |flintstone, index|
  flintstones_hash[flintstone] = index
end

print "Problem 1: "
p flintstones_hash

# 2.) Add up all of the ages from the Munster family hash.

ages = {
  "Herman" => 32,
  "Lily" => 30,
  "Grandpa" => 5843,
  "Eddie" => 10,
  "Marilyn" => 22,
  "Spot" => 237
}

sum_of_ages = 0

ages.each_value do |age|
  sum_of_ages += age
end

print "Problem 2: "
p sum_of_ages

# 3.) In the age hash, remove people with age 100 and greater.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.delete_if { |person, age| age >= 100 }

print "Problem 3: "
p ages

# 4.) Pick out the minimum age from the Munster family hash.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

print "Problem 4: "
p ages.values.min

# 5.) Find the index of the first name that starts with 'Be'.

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

print "Problem 5: "
p flintstones.index { |name| name.start_with?('Be') }

# 6.) Amend this array so hat the names are all shortened to just the first
#     three characters.

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each do |name|
   name.gsub!(name, name[0,3])
end

print "Problem 6: "
p flintstones

# 7.) Create a frequency hash of all characters in the string.

statement = "The Flintstones Rock"

char_freq_hash = statement.chars.each_with_object({}) do |char, freq_hash|
  char_freq = statement.count(char)
  freq_hash[char] = char_freq
end

print "Problem 7: "
p char_freq_hash

# 9.) Write your own version of the rails 'titalize' implementation.

def titalize(string)
  exceptions = %w(the a at by down for from in into like near of off on onto
                  over past to upon with and as but for if nor once or so than
                  that till when yet)

  words = string.split

  words.each do |word|
    if word == words.first || word == words.last
      word.capitalize!
    else
      word.capitalize! unless exceptions.include?(word)
    end
  end

  titalized = words.join(' ')
  titalized
end

puts "Problem 9: "
puts '  ' + titalize('the flintstones rock')
puts '  ' + titalize('the catcher in the rye')
puts '  ' + titalize('gone with the wind')

# 10.) Modify the munsters hash such that each member of the Munster family has
#      and additional "age_group" with a value of kid, senior or adult.

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |munster, profile|
  case profile['age']
  when 0..17
    munsters[munster]['age_group'] = 'kid'
  when 18..64
    munsters[munster]['age_group'] = 'adult'
  when 65..Float::INFINITY
    munsters[munster]['age_group'] = 'senior'
  end
end

puts "Problem 10: "
munsters.each do |k, v|
  puts "  #{k}: #{v}"
end
