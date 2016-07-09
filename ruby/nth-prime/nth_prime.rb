class Prime

  def nth(pos)
    fail ArgumentError if pos < 1

    return 2 if pos == 1

    number = 1

    (pos - 1).times { |i|
      number += 2
      number += 2 while(not is_prime?(number))
    }

    number
  end

  def is_prime?(number)
    return false if number <= 1 || (number % 2).zero?

    is_prime = true

    (3...number).each { |divisor|
      next if divisor.even?

      if (number % divisor).zero?
        is_prime = false
        break
      end
    }
  end

end
