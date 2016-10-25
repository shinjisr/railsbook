def add x, y
	x + y
end

def titleize string
  string.split(' ').map(&:capitalize).join(' ')
end

def rant s
	s.upcase.gsub(" ", "") + "!!!"
end
 puts rant "i like pizza"