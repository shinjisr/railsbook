loop do 
	puts "Feed me some food!"
	food = gets.strip
    break if food.empty?
	if food == "pizza"
		puts "Yum, I love pizza!" 
	elsif food == "shit"
		puts "you eat your shit!"
	else
		puts "I don't want this!"
end
end