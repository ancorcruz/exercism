class Robot

  def name
    @name ||= random_name
  end

  def reset
    @name = nil
  end

  private

  def random_name
    (2.times.map { random_char } + 3.times.map { random_digit }).join
  end

  def random_char
    ('A'..'Z').entries.sample
  end

  def random_digit
    rand(0..9)
  end

end
