class Pangram

  VERSION = 1

  class << self

    def is_pangram? string
      (string.downcase.chars & alphabet).size == alphabet.size
    end

    def alphabet
      [*'a'..'z']
    end

  end

end
