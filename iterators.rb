#Code like this
#以下這段沒搞懂 161120
def times x
	i = 0
	until i == x
		yield i
		i + 1
	end
	x
end
#to each his own
["apple", "banana", "cherry"].each do |fruit|
	puts "I love #{fruit}!"
end
#warning:each returns the collection, not the value
def count_chars a
	c = 0
	a.each do |s|
		c += s.length		#this returns c
	end						#but this returns a
	c 						#so this returns c (again)
end

count_chars ["apple", "banana", "cherry"]

#implementing each using until
def each a
	i = 0
	until i == a.size
		yield a[i]
		i += 1
	end
	a
end

#
def map input
	a = []
	input.each do |item|
		a << yield(item)
	end
	a
end


