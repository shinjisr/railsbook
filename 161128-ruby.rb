#Ruby使用手冊
#http://guides.ruby.tw/ruby/examples.html
#簡單示範
def fact(n)
	if n == 0
		1
	else
		n * fact(n-1)
	end
end

puts fact(ARGV[0].to_i)
#e.g.% ruby 161128-ruby.rb 40