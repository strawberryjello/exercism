class Pangram

  ALPHABET = 'abcdefghijklmnopqrstuvwxyz'
  NON_ALPHABET_CHARS = /[^#{ALPHABET}]/

  def self.pangram?(phrase)
    ALPHABET == alphabetize(phrase.downcase)
  end

  def self.alphabetize(string)
    string.chars.sort.join.squeeze.gsub(NON_ALPHABET_CHARS, '')
  end

  private_class_method :alphabetize

end

module BookKeeping
  VERSION = 6
end
