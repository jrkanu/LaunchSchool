def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}."
  else
    puts "Hi, my name is #{name}, I'm #{options[:age]} years old and live in #{options[:city]}."
  end
end

greeting("Olive")
greeting("Olive", age: 26, city: "Farmington, NY")
