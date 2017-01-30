filename = ARGV.first #make a variable equal what we type comes after. e.g. $ruby ex15.rb "filename"

txt = open(filename)

puts "Here's your file #{filename}:"
print txt.read #call a function named "read"

print "Type the filename again: "
file_again = $stdin.gets.chomp #let user type the file's name again

txt_again = open(file_again)

print txt_again.read
