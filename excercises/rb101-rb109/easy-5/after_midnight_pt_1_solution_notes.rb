# 1. Define constants first. This avoids having mystery numbers floaring around 
# in the code.

# CONSTANTS

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(delta_minutes)
  # This modulation operation ensures we a working within the range of minutes
  # withing a single day.
  delta_minutes = delta_minutes % MINUTES_PER_DAY

  # The Numeric#divmod method returns an array with the quotient and remainder
  # of the object it was called on. 
  # For example: 15.divmod(4) -> [3, 3], i.e., 15 / 4 = 3, remainder 3.
  # Here, #divmod is used to convert an expression of minutes into minutes and
  # hours (note also the use of multiple assignment, here, for concision).
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)

  # Returns a string formatted in '00:00' form. See Kernal#format for deets.
  format('%02d:%02d', hours, minutes)
end