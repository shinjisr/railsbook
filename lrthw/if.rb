puts "Key in a number."
print ">"
a = $stdin.gets.chomp.to_i
def vs(a)
  # if a > 10
  #   result = "big"
  # elsif a > 5
  #   result = "bigger than 5"
  # elsif a > 3
  #   result = "bigger than 3"
  # else
  #   result = "small"
  # end
# 可以縮減為：

result = ("big" if a > 10) || 
("bigger than 5" if a > 5) || 
("bigger than 3" if a > 3) || "small"

  puts "#{result}"
end
vs(a)
