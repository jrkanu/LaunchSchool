# Build a program that asks the user for the length and width of a room in
# meters and then displays the area of the room in both square meters and
# square feet.

print "Room length in meters: "
len = gets.chomp.to_f

print "Room width in meters: "
width = gets.chomp.to_f

area_in_meters = len * width
area_in_feet = area_in_meters * 10.7639

puts "The area of the room is #{area_in_meters} square meters (#{area_in_feet} square feet)."
