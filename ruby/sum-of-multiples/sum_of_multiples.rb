class SumOfMultiples

  def initialize (*args)
    @multiples_of = args
  end

  def to(limit)
    multiples = (1..limit-1).select do |n|
      @multiples_of.map { |i| n % i == 0 }.any?
    end

    multiples.sum
  end

end

module BookKeeping
  VERSION = 2
end
