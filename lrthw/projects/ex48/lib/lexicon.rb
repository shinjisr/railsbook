class Lexicon

  #begin
  def initialize()
    @direction = direction
  end

  attr_reader :direction

  def self.scan(stuff)
    words = stuff.split
    verbs = ['go', 'stop', 'kill', 'eat']
    directions = ['east', 'south', 'west', 'north']
    # begin
      words.each { |word|
        if word.class != String
          puts "Not a good idea."
        else
          # if verbs.include?(words) || directions.include?(words)
            # verb_word = ['verb', words & verbs]
            # direction_word = words * 'direction'
            words.each {|word|
            direction_word = [["direction",words[0]]]
            #direction_word = [["direction",words[0]]]
            # direction_word = ['direction', words & directions]
            return direction_word
              }
            # print [verb_word, direction_word]
          # end
        end
          }
    # rescue
    #     return "fail"
    # end
  end
end

# Lexicon.scan("north")
