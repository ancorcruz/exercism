class Squares

  VERSION = 2

  def initialize(sequence_size)
    @sequence_size = sequence_size
  end

  def square_of_sum
    sequence.reduce(0, :+) ** 2
  end

  def sum_of_squares
    sequence.reduce(0) { |memo, number| memo + number ** 2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end

  private

  def sequence
    1.upto(@sequence_size)
  end

end
