def get_age(age)
  puts "My age is #{age}"
end

puts "How old are you?"
# print "How old are you? \n"
get_age(gets.chomp.to_i)
