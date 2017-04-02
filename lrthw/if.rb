puts "Key in a number."
a = $stdin.gets.chomp.to_i
def vs(a)
  if a > 10
    result = "big"
  elsif a > 5
    result = "bigger than 5"
  elsif a > 3
    result = "bigger than 3"
  else
    result = "small"
  end
  puts "#{result}"
end
vs(a)
