class ETL
  def self.transform(scoring)
    scoring.inject({}) do |new_scoring, (score, letters)|
      letters.each { |letter| new_scoring[letter.downcase] = score }
      new_scoring
    end
  end
end
