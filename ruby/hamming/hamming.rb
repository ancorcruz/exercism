class Hamming

  VERSION = 1

  def initialize(strand_a, strand_b)
    fail ArgumentError unless strand_a.size == strand_b.size

    @strand_a, @strand_b = strand_a, strand_b
  end

  def self.compute(strand_a, strand_b)
    new(strand_a, strand_b).compute
  end

  def compute
    @strand_a.each_char.each_with_index.count { |nucleotide, index|
      nucleotide != @strand_b[index]
    }
  end

end
