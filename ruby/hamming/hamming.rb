class Hamming
  def self.compute(strand1, strand2)
    raise ArgumentError if strand1.length != strand2.length

    strand1.chars.zip(strand2.chars).reject { |n| n[0] == n[1] }.length
  end
end

module BookKeeping
  VERSION = 3
end
