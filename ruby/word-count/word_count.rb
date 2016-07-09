class Phrase

  VERSION = 1

  attr_reader :phrase

  def initialize phrase
    @phrase = phrase
  end

  def word_count
    phrase
      .downcase
      .scan(/\b[\w']+\b/)
      .each_with_object(Hash.new(0)) { |word, word_count|

      word_count[word] += 1
    }
  end

end
