class TwoFer

  def self.two_fer(name = nil)
    recipient = name || "you"

    "One for #{recipient}, one for me."
  end

end

module BookKeeping
  VERSION = 1
end
