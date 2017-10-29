class Lexicon
  @@dictionary = {
    'direction' => ['north', 'south', 'east', 'west'],
    'verb' => ['go', 'eat', 'kill', 'jump', 'run',
      'walk'],
    'stop' => ['the', 'in', 'of', 'to', 'a', 'is'],
    'noun' => ['bear', 'princess', 'nose', 'castle', 'cake'],
    'name' => ['snoopy', 'linus', 'lucy']
  }

  def self.scan(text)
    text_elements = text.split(' ')
    result = []

    text_elements.each do |text_element|
      categorized = []

      # remove trailing zeros from numerical input
      number = Lexicon.integer?(text_element)
      # so we can write if-statement like this?!
      if (number)
        categorized = ['number', number]
        result.push(categorized)
        # why using "next" here?
        next # to pass some loop of any kind of iterator 跳過某一輪的循環
      end

      @@dictionary.each do |type, list| #
        if list.include?(text_element.downcase)
          categorized = [type, text_element]
          result.push(categorized)
          break # jump out from "loop iterator"
        end
      end

      if (categorized.empty?) #
        categorized = ['error', text_element]
        result.push(categorized)
      end

    end

    return result
  end

  def self.integer?(object)
    # remove any trailing zeros so the number
    # does not get interpreted as hex
    object.sub!(/^0+/, "") # replace trailing zeros to "nothing"

    begin
      return Integer(object)
    rescue
      return false
    end
  end

end