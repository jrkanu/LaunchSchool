# Given the following hash...

h = {a:1, b:2, c:3, d:4}

# 1. Get the value of key ':b'

p h[:b]

# 2. Add to this hash the key:value pair '{e: 5}'

h[:e] = 5
p h

# 3. Remove all the key:value pairs whose value it less than 3.5

h.delete_if { |k,v| v < 3.5 }
p h
