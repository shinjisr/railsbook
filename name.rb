puts "What is your first name?"
first_name = gets.strip.capitalize
puts "And your last name?"
last_name = gets.strip.capitalize
puts "Hello, " + first_name + " " + last_name + "!"
fullname = first_name + last_name
puts "Your name is " + fullname.length.to_s + " characters long."