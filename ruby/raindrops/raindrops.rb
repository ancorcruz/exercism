require 'prime'

class Raindrops

  VERSION = 1

  FACTORS = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong',
  }

  def initialize(number)
    @number = number
  end

  def self.convert(number)
    new(number).convert
  end

  def convert
    str = prime_factors.uniq.each_with_object('') { |factor, memo|
      memo << FACTORS.fetch(factor, '')
    }

    str.empty? ? @number.to_s : str
  end

  private

  def prime_factors
    Prime.prime_division(@number).flatten
  end

end
