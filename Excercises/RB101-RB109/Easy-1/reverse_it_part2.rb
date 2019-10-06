def reverse_words(sentence)

  sentence = sentence.split(' ')

  sentence.each do |word|
    if word.length >= 5
      word.reverse!
    end
  end

  sentence.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS