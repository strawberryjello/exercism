class Raindrops
  def self.convert(n)
    sound = ""

    sound += "Pling" if n % 3 == 0
    sound += "Plang" if n % 5 == 0
    sound += "Plong" if n % 7 == 0

    sound = n.to_s if sound == ""

    sound
  end
end

module BookKeeping
  VERSION = 3
end
