class Lexicon

  #begin
  # def initialize()
  #   @direction = direction
  # end

  # attr_reader :direction

  def self.scan(stuff)
    words = stuff.split
    directions = ['east', 'south', 'west', 'north']
    verbs = ['go', 'stop', 'kill', 'eat']
    stops = ['the', 'in', 'of']
    nouns = ['bear', 'princess']
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    results = []
    begin
      words.each {|word|
        # if word.class != String
        #   puts "Not a good idea."
        if directions.include?(word)
          words.each {|word|
            direction_word = ["direction", word]
            results.push(direction_word)
          }
        elsif verbs.include?(word)
          words.each {|word|
            verb_word = ["verb", word]
            results.push(verb_word)
          }
        elsif stops.include?(word)
          words.each {|word|
            stop_word = ["stop", word]
            results.push(stop_word)
          }
        elsif nouns.include?(word)
          words.each {|word|
            noun_word = ["noun", word]
            results.push(noun_word)
          }
        elsif word.class == Fixnum
          words.each {|word|
            number_word = ["number", word.to_i]
            results.push(number_word)
          }
        else
          errors = words - directions - verbs - nouns
          errors.each {|word|
            if word.class != Fixnum
              error_word = ["error", word]
              results.push(error_word)
            end
          }
        end
        return results
      }
    rescue
      # errors = words - directions - verbs - nouns
      # errors.each {|word|
      #   if word.class != Fixnum
      #     error_word = ["error", word]
      #     results.push(error_word)
      #   end
      # }
      return results
    end
  end
end

# Lexicon.scan("north")
