
# I found this "anwser" in stackoverflow.com 
# that talks about for loop in Ruby
# but it's Rails's "Date"
start = Date.new(2013, 06, 30)
stop = Date.new(2011, 06, 30)
# step back in time over two years, one week at a time
start.step(stop, -7).each do |d|
	puts d
end




# This is copy of ex32.rb in Learn Ruby The Hard Way
# the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
# change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# # this frist kind of for-loop goes through a list
# # in a more traditional style found in other languages
for number in the_count
	puts "This is count #{number}"
end

the_count.each do |number|
	puts "This is typical count #{number}"
end

the_count.each {|i| puts "This is count-i #{i}"}

# same as above, but in a more Ruby style
# this and the next one are the preferred
# way Ruby for-loop are written
fruits.each do |fruit|
	puts "A fruit of type #{fruit}"
end


# cool trick below:
fruits.each_with_index do |fruit, i|
	puts "A fruit of type #{fruit} #{i}"
end

# # also we can go through mixed list too
# # note this is yet another style, exactly like above
# # but a different syntax (way to write it).
# change.each {|i| puts "I got #{i}" }

# # we can also built lists, first start with an empty one
# elements = []

# then use the range operator to do 0 to 5 counts
(0..5).each do |i|
	puts "adding #{i} to the list."
	# pushes the i variable on the *end* of the list
	elements.push(i)
end

# # now we can print them out too
# elements.each {|i| puts "Element was #{i}" }
# # puts "#{elements}"