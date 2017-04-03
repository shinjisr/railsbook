puts "This is Table of characters:"
puts "Let's do some boring, mindless memorization exercises!"

puts "Please spell out this '~'\n"
answer = $stdin.gets.chomp
def tilde(answer)
  if answer == "tilde"
      puts "correct!"
    else
      puts "~ = tilde"
  end
end
tilde(answer)
# print = "please spell out this'''"
# answer = $stdin.gets.chomp
# if answer == "apostrophe"
#     puts "correct!"
#   else
#     puts "'' = apostrophe"
# end

# ~ = tilde
# '' = apostrophe / single quote
# "" = double quote
# : = colon
# ; = semi-colon
# ! = exclamation
# @ = at
# # = hashtag / pound sign
# $ = dollar sign
# % = percent
# ^ =
# & =
# * = (star)(MULTIPLYING)
# ( = open parenthesis
# ) = close parenthese
# {} = brackets
# <> = angle brackets
# + = plus (ADDING)
# - = minus (SUBTRACTING)(hyphen)
# | = delimiter
# / = slash (DIVIDING)
# _ = underscore / underline
# = = equal (nameing a value)
# == = equal(mathematical)
# < = less-than
# > = greater-than
# <= = less-than-equal
# >= = greater-than-equal
# += = left value equals left plus right
# , = comma, to separate multiple series value
# . = period, be used in call method
# ? = question mark
