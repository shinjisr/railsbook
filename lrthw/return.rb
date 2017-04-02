# def write_code(number_of_errors)
#   if number_of_errors > 0
#     "WTF"
#   else
#     "No Problem"
#   end
# end
#
# def write_code(number_of_errors)
#   if number_of_errors > 0
#     mood = "WTF"
#   else
#     mood = "No Problem"
#   end
#   return mood
# end

# def write_code(number_of_errors)
#   return nil unless number_of_errors
#   number_of_errors.split(/\s+/)[-1]
# end

#
# number_of_errors = ARGV.first.to_i
# puts write_code(number_of_errors)


#寫一些function嘗試了解return的用法 170318
def return_sub(a, b)
  puts "subtracting #{a} - #{b}"
  return a - b
end

print "Give me a number:"
a = gets.chomp.to_i
print "Give me another number:"
b = gets.chomp.to_i

puts return_sub(a, b)
