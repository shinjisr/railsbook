class MegaGreeter
  attr_accessor :names

  # 初始化這個物件
  def initialize(names = "World")
    @names = names
  end

  # say hi to every one
  def say_hi
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("each")
      # @name 是可以迭代的陣列容器
      @names.each do |name|
        puts "Hello #{name}!"
      end
    else
      puts "Hello #{@names}!"
    end
  end

  # say bye to every one
  def say_bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("join")
      # Join every string with ","
      puts "Goodbye #{@names.join(", ")}. Come back soon!"
    else
      puts "Goodbye #{@names}. Come back soon!"
    end
  end
end

if __FILE__ == $0
  mg = MegaGreeter.new
  mg.say_hi
  mg.say_bye

  # change it to "Zeke"
  mg.names = "Zeke"
  mg.say_hi
  mg.say_bye

  # change it to an array with names
  mg.names = ["Albert", "Brenda", "Charles", "Dave", "Engelbert"]
  mg.say_hi
  mg.say_bye

  # change it to nil
  mg.names = nil
  mg.say_hi
  mg.say_bye
end


# g = Greeter.new("Pat")

# g.say_hi

# g.say_bye

# class Greeter
#   attr_accessor :name
# end

# g = Greeter.new("Andy")