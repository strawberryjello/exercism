class Phrase

  def initialize(string)
    @string = string
  end

  def word_count
    words = get_words
    counts = Hash.new(0)

    words.each { |word| counts[word] += 1 }

    counts
  end

  private

    def get_words
      @string.split(/[,\s]+/).map { |w| sanitize(w) }
    end

    def sanitize(string)
      string.downcase.gsub(/^\'/, '').gsub(/'$/, '').gsub(/[^a-z0-9\']/, '')
    end

end

module BookKeeping
  VERSION = 1
end
