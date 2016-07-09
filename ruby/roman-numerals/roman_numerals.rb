class Fixnum

  VERSION = 1

  def to_roman
    remainder = self

    roman_equivalences.inject('') { |result, (arabic, roman)|
      return result if remainder.zero?

      matches, remainder = remainder.divmod arabic
      result + roman * matches
    }
  end

  private

  def roman_equivalences
    {
      1000 => 'M',
      900  => 'CM',
      500  => 'D',
      400  => 'CD',
      100  => 'C',
      90   => 'XC',
      50   => 'L',
      40   => 'XL',
      10   => 'X',
      9    => 'IX',
      5    => 'V',
      4    => 'IV',
      1    => 'I',
    }
  end


end
