puts 'There is t2.1'
puts 'What is your name?'
name = gets.strip.capitalize
if name == ('Aa' or 'Bb' or 'Cc') then
	puts "Go away!"
else
	puts "Hello" + name + '!'
puts "What is your age?"
age = gets.to_i
puts "Sorry, adults only, go home now." if age < 18 
puts "<<allowed>>" if age >= 18
end