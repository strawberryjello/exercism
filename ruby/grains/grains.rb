class Grains

  SQUARE_RANGE = (1..64)

  def self.square(n)
    raise ArgumentError.new("argument out of range") unless SQUARE_RANGE.include?(n)

    2 ** (n-1)
  end

  def self.total
    SQUARE_RANGE.reduce { |sum, n| sum + self.square(n) }
  end

end

module BookKeeping
  VERSION = 1
end
