## Animal is-a object look at the extra credit
class Animal
end

## Dog is-a Animal
class Dog < Animal

  def initialize(name)
    ## Dog has-a name
    @name = name
  end
end

## Cat is-a Animal
class Cat < Animal

  def initialize(name)
    ## Cat has-a name
    @name = name
  end
end

## Person is-a object
class Person

  def initialize(name)
    ## Person has-a name
    @name = name

    ## person has-a pet of some kind
    @pet = nil
  end

  attr_accessor :pet
end

## employee is-a person
class Employee < Person

  def initialize(name, salary)
    ## it forwards arguments from the same method in parent class.
    # in this case, it sends 'name' to function 'initialize' in 'Person'
    super(name)
    ## Employee has-a salary
    @salary = salary
  end

end

## fish is-a object
class Fish
end

## salmon is-a fish
class Salmon < Fish
end

## halbut is-a fish
class Halibut < Fish
end


## rover is-a Dog
rover = Dog.new("Rover")

## satan is-a cat
satan = Cat.new("Satan")

## mary is-a person
mary = Person.new("Mary")

## mary has-a pet, Satan
mary.pet = satan

## frank is-a employee
frank = Employee.new("Frank", 120000)

## frank has-a pet, Rover
frank.pet = rover

## flipper is-a fish
flipper = Fish.new

## crouse is-a salmon
crouse = Salmon.new

## harry is-a halibut
harry = Halibut.new
