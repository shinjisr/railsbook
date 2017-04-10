# x = 8
# y = 2


def iloop
	numbers = []
	(0..6).each do |i|
		puts "At the top i is #{i}"
		numbers.push(i)

		puts "Numbers now: ", numbers
		puts "At the buttom i is #{i}"
	end
	puts "The numbers in the end: "
	numbers.each {|num| puts num }
end

iloop

# remember you can write this 2 other ways?
# puts "first way: .each"


# numbers.each do |num|
# 	puts "second way: .each #{num}"
# end

# for num in numbers
# 	puts "Third way: for...in #{num}"
# end
