module Year
  extend self

  VERSION = 1

  def leap?(year)
    (year % 4).zero? && ((year % 100).nonzero? || (year % 400).zero?)
  end
end
