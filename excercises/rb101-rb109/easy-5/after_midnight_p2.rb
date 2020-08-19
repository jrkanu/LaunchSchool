# SPEC: Write two methods that take a time of day in 24 hour format, and return
#       the number of minutes before and after midnight, repectively.
#
# PSUEDOCODE
#
# 1. Parse 24h format and separate hours from minutes using String#split
# 2. Multiply hours by 60 and add to minutes to get time_in_minutes.
# 3. Modulo time_in_minutes by MINUTES_PER_DAY (for 24:00 edge case)
# 3a. (For before midnight version only): MINUTES_PER_DAY - time_in_minutes

MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = 1440

def parse_time(time)
  # Returns array [hours, minutes]
  hours_and_minutes = time.split(':')
  
  hours_and_minutes = hours_and_minutes.map {|num_string| num_string.to_i}
end

def into_minutes(time)
  # Returns 24h format as minutes past 00:00
  hours, minutes = parse_time(time)

  (hours * MINUTES_PER_HOUR) + minutes
end

def after_midnight(time)
  into_minutes(time) % MINUTES_PER_DAY
end

def before_midnight(time)
  (MINUTES_PER_DAY - into_minutes(time)) % MINUTES_PER_DAY
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0