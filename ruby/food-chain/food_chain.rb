class FoodChain

  VERSION = 2

  def self.song
    verses.map { |(animal, line)| Verse.for(animal, line) }.join("\n")
  end

  def self.verses
    @verses ||= {
      fly:    "I don't know why she swallowed the fly. Perhaps she'll die.",
      spider: "It wriggled and jiggled and tickled inside her.",
      bird:   "How absurd to swallow a bird!",
      cat:    "Imagine that, to swallow a cat!",
      dog:    "What a hog, to swallow a dog!",
      goat:   "Just opened her throat and swallowed a goat!",
      cow:    "I don't know how she swallowed a cow!",
      horse:  "She's dead, of course!",
    }
  end

  class Verse

    def self.for animal, line
      case animal
      when :fly, :horse
        "#{shallowed animal}\n#{line}\n"
      else
        "#{shallowed animal}\n#{line}\n#{Chorus.for animal}\n"
      end
    end

    def self.shallowed animal
      "I know an old lady who swallowed a #{animal}."
    end

  end

  class Chorus

    def self.animals_chain
      @animals_chain ||= FoodChain.verses.keys
    end

    def self.for animal
      case animal
      when :fly
        ["I don't know why she swallowed the fly. Perhaps she'll die."]
      when :bird
        [
          "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
          self.for(:spider),
        ]
      else
        previous_animal = animals_chain[animals_chain.index(animal) - 1]

        [
          swallowed_to_catch(animal, previous_animal),
          self.for(previous_animal),
        ]
      end.join("\n")
    end

    def self.swallowed_to_catch swallowed, to_catch
      "She swallowed the #{swallowed} to catch the #{to_catch}."
    end

  end

end
