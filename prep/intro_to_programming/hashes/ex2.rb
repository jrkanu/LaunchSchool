# Look at Ruby's 'merge' method. Notice that it has two versions. What is the
# difference between 'merge' and 'merge!'? Wrtie a program that uses both and
# illustrates the differences.

# Three hashes with overlapping values.
hash1 = { a: 100, b: 200, c: 300 }
hash2 = { c: 400, d: 500, e: 600 }
hash3 = { e: 700, f: 800, g: 900 }

# Merge all three hashes using merge; notate where merge conflict occurs.
merged_hash = hash1.merge(hash2, hash3){ |key, oldval, newval| newval = "MERGE CONCLIFT" }

# p the results
p merged_hash
p hash1
p hash2
p hash3

# With merge, the original hash remains intact, and a new hash is returned.

# Merge all three hashed with merge!
merged_hash = hash1.merge!(hash2, hash3){ |key, oldval, newval| newval = "MERGE CONCLIFT" }

# p the results
p merged_hash
p hash1
p hash2
p hash3

# With merge!, the hash on which the method is called is changed.

# Conclusion: 'merge' does not mutate the caller, while 'merge!' does.
