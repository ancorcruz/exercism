class Complement
  VERSION = 3

  class << self

    def of_dna(strand)
      fail ArgumentError if strand =~ /[^CGTA]/

      strand.tr('CGTA', 'GCAU')
    end

  end

end
