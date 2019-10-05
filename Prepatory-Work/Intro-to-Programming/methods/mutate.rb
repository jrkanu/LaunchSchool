a = [1,2,3]

def mutate(array)
  array.pop
end

p "before mutate method: #{a}"
mutate (a)
p "after mutate method #{a}"

b = [1,2,3]

def no_mutate(array)
  array.last
end

p "before no_nutate method: #{b}"
no_mutate(b)
p "after no_mutate method: #{b}"
