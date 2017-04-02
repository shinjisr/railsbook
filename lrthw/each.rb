names = ["Bozhidar", "Steven", "Sarah"]
#good
names.each { |name| puts name }

#good
names.each do |name|
  puts name
  puts 'yay!'
end

#good
names.select { |name| name.start_with?("S") }.map { |name| name.upcase }

#bad
names.select do |name|
  name.start_with?("S")
end.map { |name| name.upcase }
