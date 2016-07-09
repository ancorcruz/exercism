class Bob

  def hey remark
    if remark.strip.empty?
      'Fine. Be that way!'

    elsif yelling? remark
      'Whoa, chill out!'

    elsif asking? remark
      'Sure.'

    else
      'Whatever.'
    end
  end

  private

  def yelling? remark
    (remark == remark.upcase) && (remark != remark.downcase)
  end

  def asking? remark
    remark.end_with? '?'
  end

end
