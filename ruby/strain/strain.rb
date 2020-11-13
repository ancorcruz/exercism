class Array
  def keep
    each_with_object([]) do |i, result|
      result << i if yield i
    end
  end

  def discard(&block)
    self - keep(&block)
  end
end
