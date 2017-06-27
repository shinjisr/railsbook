# class Parent

#   def override()
#     puts "PARENT override()"
#   end

#   def implicit()
#     puts "PARENT implicit()"
#   end

#   def altered()
#     puts "PARENT altered()"
#   end

# end

# class Child < Parent

#   def override()
#     puts "CHILD override()"
#   end

#   def altered()
#     puts "CHILD, BEFORE PARENT altered()"
#     super()
#     puts "CHILD, AFTER PARENT altered()"
#   end
# end

# dad = Parent.new()
# son = Child.new()

# dad.implicit()
# son.implicit()

# dad.override()
# son.override

# dad.altered
# son.altered
class Other

  def override()
    puts "OTHER override()"
  end

  def implicit()
    puts "OTHER implicit()"
  end

  def altered()
    puts "OTHER altered()"
  end
end

class Child

  # create an instance of "class Other" the same time
  # when an instance of "class Child" has been created.
  def initialize()
    @other = Other.new()
  end

  # call the same function in class Other, and so on.
  def implicit()
    @other.implicit()
  end

  def override()
    puts "CHILD override()"
  end

  def altered()
    puts "CHILD, BEFORE OTHER altered()"
    @other.altered() # present the result of other.altered()
    puts "CHILD, AFTER OTHER altered()"
  end
end

son = Child.new()

son.implicit()
son.override()
son.altered()
