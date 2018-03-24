module RomanNumerals

  ROMAN_DIGITS = {
    1 => 'I',
    5 => 'V',
    10 => 'X',
    50 => 'L',
    100 => 'C',
    500 => 'D',
    1000 => 'M'
  }

  SCALE = 10

  refine Integer do
    def to_roman
      i = self
      order_of_magnitude = 1
      roman = ''

      while i > 0
        i, remainder  = i.divmod(SCALE)
        roman.prepend(roman_digit(remainder, order_of_magnitude))
        order_of_magnitude *= SCALE
      end

      roman
    end

    def roman_digit i, mag
      case i
      when 1..3
        ROMAN_DIGITS[1 * mag] * i
      when 4
        ROMAN_DIGITS[1 * mag] + ROMAN_DIGITS[5 * mag]
      when 5..8
        ROMAN_DIGITS[5 * mag] + (ROMAN_DIGITS[1 * mag] * (i - 5))
      when 9
        ROMAN_DIGITS[1 * mag] + ROMAN_DIGITS[SCALE * mag]
      else
        ''
      end
    end
  end

end

module BookKeeping
  VERSION = 2
end
