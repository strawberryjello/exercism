class Squares
  def initialize(n)
    @first_n = (1..n)
  end

  def square_of_sum
    @first_n.reduce(:+) ** 2
  end

  def sum_of_squares
    @first_n.reduce { |sum, i| sum + i ** 2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 4
end
