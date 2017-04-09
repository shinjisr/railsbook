# x = 8
# y = 2


def iloop(x, y)
i = 0
numbers = []
	while i < x
		puts "At the top i is #{i}"
		numbers.push(i)

		i += y
		puts "Numbers now: ", numbers
		puts "At the buttom i is #{i}"
	end
	puts "The numbers: "
	numbers.each {|num| puts num }
end

iloop(3, 1)



# remember you can write this 2 other ways?
# puts "first way: .each"


# numbers.each do |num|
# 	puts "second way: .each #{num}"
# end

# for num in numbers
# 	puts "Third way: for...in #{num}"
# end
