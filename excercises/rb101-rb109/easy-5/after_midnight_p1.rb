# SPEC: Write a method that takes an expression of time written as a positive
#       or negative number (representing the number of minutes before or afer
#       midnight), and converts it to 24 hour format (hh:mm).
#
# ---+ Psuedocode +---
#
# start with 00:00
# return 00:00 if 0
# for every positive minute:
# - increment minute side by one
# -- until minute side = 59
# --- then reset minute to zero, and
# --- increment hour side by one
# ---- until hour side = 23
# ------then reset hour side to zero
# rinse and repeat
# do the opposite for negative minutes

def format_time(hours_and_minutes)
  hours = "%02d" % hours_and_minutes[:hours]
  minutes = "%02d" % hours_and_minutes[:minutes]

  "#{hours}:#{minutes}"
end

def add_hours(hours_and_minutes)
  unless hours_and_minutes[:hours] >= 23
    hours_and_minutes[:hours] += 1
  else
    hours_and_minutes[:hours] = 0
  end

  hours_and_minutes
end

def add_minutes(hours_and_minutes)
  unless hours_and_minutes[:minutes] >= 59
    hours_and_minutes[:minutes] += 1
  else
    hours_and_minutes[:minutes] = 0
    add_hours(hours_and_minutes)
  end

  hours_and_minutes
end

def subtract_hours(hours_and_minutes)
  unless hours_and_minutes[:hours] <= 0
    hours_and_minutes[:hours] -= 1
  else
    hours_and_minutes[:hours] = 23
  end

  hours_and_minutes
end

def subtract_minutes(hours_and_minutes)
  unless hours_and_minutes[:minutes] == 0
    hours_and_minutes[:minutes] -= 1
  else
    hours_and_minutes[:minutes] = 59
    subtract_hours(hours_and_minutes)
  end

  hours_and_minutes
end

def time_of_day(int)
  time = {hours: 0, minutes: 0}

  if int == 0
    time
  elsif int.positive?
    int.times {add_minutes(time)}
  elsif int.negative?
    (int * -1).times {subtract_minutes(time)}
  end

  format_time(time)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"