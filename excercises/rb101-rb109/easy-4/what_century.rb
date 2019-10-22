# Write a method that takes a year as input and returns the century.

def append_century_suffix(century)
  century_as_string = century.to_s

  if century_as_string.end_with?('1') && !century_as_string.end_with?('11')
    century_as_string + 'st'
  elsif century_as_string.end_with?('2') && !century_as_string.end_with?('12')
    century_as_string + 'nd'
  elsif century_as_string.end_with?('3') && !century_as_string.end_with?('13')
    century_as_string + 'rd'
  else
    century_as_string + 'th'
  end
end

def century(year)
  century = if year % 100 == 0
              year / 100
            else
              (year / 100) + 1
            end

  append_century_suffix(century)
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
