class Cat
  attr_accessor :name

  def initialize(name, gender)
    @name = name
    @gender = gender
  end

  def eat(food)
    puts "#{food} is delicious!"
  end

  # def say_hello
  #   puts "hello, my name is #{@name}"
  # end

  def say_hello
    self.gossip
  end

  # private. To assign methods below as private method
  protected
  def gossip
    puts "秘密。"
  end

  # def name
  #   @name
  # end

  # def name=(new_name)
  #   @name = new_name
  # end

end

kitty = Cat.new("kitty", "female")
kitty.say_hello
kitty.eat "Pizza"
kitty.name = "meow"
puts kitty.name