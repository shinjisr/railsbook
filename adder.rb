puts "adder.rb"
number = gets.strip.to_i
loop do 
	puts number
	number = (number + gets.strip.to_i)
end