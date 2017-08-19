class TwelveDaysSong
  def print
    puts "in top class"
  end
end

module Second
  class TwelveDaysSong
    def print
      puts "in second class"
    end
  end
end

a = TwelveDaysSong.new
puts "1."
a.print

#I could wrote it like this too
a = ::TwelveDaysSong.new
puts "2."
a.print

module Twelve
  class TwelveDaysSong
    def print
      puts "in module class"
    end
  end
end

b = Twelve::TwelveDaysSong.new
b.print
#b is not equal to
puts "3."
a = ::TwelveDaysSong.new
a.print
#neither
puts "4."
a = TwelveDaysSong.new
a.print
