class Grains

  CHESSBOARD_MAX_SQUARES = 64
  CHESSBOARD_RANGE = (1..CHESSBOARD_MAX_SQUARES)

  def self.square(nth_square)
    unless CHESSBOARD_RANGE.include?(nth_square)
      raise ArgumentError.new("argument out of range")
    end

    2 ** (nth_square-1)
  end

  def self.total
    CHESSBOARD_RANGE.sum { |n| square(n) }
  end

end

module BookKeeping
  VERSION = 1
end
