#Ruby 使用手冊
#正規表示式 Regular expressions
#需要 ＡＮＳＩ 終端機！

st = "\033[7m"
en = "\033[m"

puts "Enter an empty string at any time to exit."

while true
	print "str> "; STDOUT.flush;
	str = gets.chop
	break if str.empty?
	print "pat> "; STDOUT.flush;
	pat = gets.chop
	break if pat.empty?
	re = Regexp.new(pat)
	puts str.gsub(re,"#{st}"\\&#{en}")
	end
