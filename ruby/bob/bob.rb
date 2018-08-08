class Bob

  def self.hey(string)
    remark = string.strip

    return "Fine. Be that way!" if remark == ""
    return "Calm down, I know what I'm doing!" if is_yelling_a_question?(remark)
    return "Whoa, chill out!" if is_yelling?(remark)
    return "Sure." if is_asking_a_question?(remark)

    "Whatever."
  end

  def self.is_yelling?(string)
    !(string =~ /[a-z]/) && (string =~ /[A-Z]/)
  end

  def self.is_yelling_a_question?(string)
    is_yelling?(string) && is_asking_a_question?(string)
  end

  def self.is_asking_a_question?(string)
    string.end_with?("?")
  end

end

module BookKeeping
  VERSION = 2
end
