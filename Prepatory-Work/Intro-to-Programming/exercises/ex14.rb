# 14. Programmatically loop or iterate over the contacts hash from exercise 12, and
#     populate the associated data from the contact_data array.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"],
            ["me_too@thirdwheel.com", "your place", "dont-call-me"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}, "Kenai Kumtuu" => {}}

# ^ Added extra data for testing purposes.

# interator for index in contact_data
i = 0

contacts.each do | name, data |

  # go though each nested array in contact_data at i index
  data[:email] = contact_data[i][0]
  data[:address] = contact_data[i][1]
  data[:phone] = contact_data[i][2]

  # increment iterator
  i += 1
end

# print result
contacts.each { |name, data| puts "#{name}, #{data}" }
