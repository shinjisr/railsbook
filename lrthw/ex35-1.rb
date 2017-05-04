def gold_room
  puts "This room is full of gold. How much do you take?"

  print "> "
  choice = $stdin.gets.chomp.to_i

  # this line has a bug, so fix it
  # if choice.include?("0") || choice.include?("1")
  #   how_much = choice.to_i
  # else
  #   dead("Man, learn to type a number.")
  # end

  if choice < 50
    puts "Nice, you're not greedy, you win!"
    exit(0)
  else
    dead("You greedy bastard!")
  end
end



def bear_room
  puts "There is a bear here."
  puts "The bear has a bunch of honey."
  puts "The fat bear is in front of another door."
  puts "How are you going to move the bear?"
  bear_moved = false

  while true
    print ">1.take honey > \n>2.taunt bear > \n>3.open door \n> "
    choice = $stdin.gets.chomp

    if choice == "1" # or choice == "1"
      dead("The bear looks at you then slaps your face off.")
    elsif choice == "2" && !bear_moved
      # elsif choice == "taunt bear" && !bear_moved
      puts "The bear has moved from the door. You can go through it now."
      bear_moved = true
    elsif choice == "2" && bear_moved
      dead("The bear gets pissed off and chews your leg off.")
    elsif choice == "3" && bear_moved
      gold_room
    else
      puts "I got no idea what that means."
    end
  end
end


def cthulhu_room
  puts "Here you see the great evil Cthulhu."
  puts "He, it, whatever stares at you and you go insane."
  puts "Do you flee for your life or eat your head?"

  print "1.flee\n2.head\n> "
  choice = $stdin.gets.to_s.chomp

  if choice.include? "flee" or choice == "1"
    start
  elsif choice.include? "head" or choice == "2"
    dead("Well that was tasty!")
  else
    cthulhu_room
  end
end


def dead(why)
  puts why, "Good job!"
  exit(0)
end

def start
  puts "You are in a dark room."
  puts "There is a door to your right and left."
  puts "Which one do you take?"

  print ">1.right\n2.left\n> "
  choice = $stdin.gets.chomp

  if choice == "left" || choice == "2"
    bear_room
  elsif choice == "right" || choice == "1"
    cthulhu_room
  else
    dead("You stumble around the room until you starve.")
  end
end

start
# gold_room
