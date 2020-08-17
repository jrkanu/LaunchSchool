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
# -- until minute side > 59
# --- then reset minute to zero, and
# --- increment hour side by one
# ---- until hour side > 23
# ------then reset hour side to zero
# rinse and repeat
# do the opposite for negative minutes

def format_time(hours_and_minutes)
  # fix this later to show leading zeros
  "#{hours_and_minutes[:hours]}:#{hours_and_minutes[:minutes]}"
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
  #code
end

def subtract_minutes(hours_and_minutes)
  #code
end

def time_of_day(minutes)
  time = {hours: 0, minutes: 0}

  if minutes == 0
    format_time(time)
  elsif minutes.positive?
    minutes.times do
      add_minutes(time)
    end
    format_time(time)
  elsif minutes.negative?
    minutes.times do
      subtract_minutes(time)
    end
    format_time(time)
  end
end

p time_of_day(25)
p time_of_day(-3)
p time_of_day(35)
p time_of_day(-1437)
p time_of_day(3000)
p time_of_day(800)
p time_of_day(-4231)