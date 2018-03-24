class Complement
  # NUCLEOTIDES = { 'C' => 'G', 'G' => 'C', 'T' => 'A', 'A' => 'U' }
  NUCLEOTIDES = Hash[*%w{C G G C T A A U}]


  def self.of_dna(strand)
    return '' if strand.match(/[^#{NUCLEOTIDES.keys.join}]/)
    # strand.gsub(/./) { |n| NUCLEOTIDES[n] }
    strand.gsub(/./, NUCLEOTIDES)
  end
end

module BookKeeping
  VERSION = 4
end
