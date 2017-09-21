require './lib/lexicon.rb'
require "test/unit"

class TestLexicon < Test::Unit::TestCase

  def test_directions()
    assert_equal([['direction', 'north']], Lexicon.scan("north"))
    result = Lexicon.scan("north south east")

    assert_equal([['direction', 'north'],
      ['direction', 'south'],
      ['direction', 'east']], result)
  end

  def test_verbs()
  end

  def test_stop()
  end

  def test_nouns()
  end

  def test_numbers()
  end

  def test_errors()
  end

end
