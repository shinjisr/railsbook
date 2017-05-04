i = 0
numbers = []

while i < 6
  puts "At the top i is #{i}"
  numbers.push(i)

  i += 1
  puts "Numbers now: ", numbers
  puts "At the buttom i is #{i}"
end

puts "The numbers: "

# remember you can write this 2 other ways?
# puts "first way: .each"
numbers.each {|num| puts num }

# numbers.each do |num|
#   puts "second way: .each #{num}"
# end

# for num in numbers
#   puts "Third way: for...in #{num}"
# end
