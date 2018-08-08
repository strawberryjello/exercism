class Bob

  RESPONSES = {
    :question => "Sure.",
    :yell => "Whoa, chill out!",
    :yelled_question => "Calm down, I know what I'm doing!",
    :silence => "Fine. Be that way!",
    :default => "Whatever."
  }

  def self.hey(string)
    remark = string.strip

    if remark == ""
      "Fine. Be that way!"
    elsif is_yelling?(remark) && remark.end_with?("?")
      "Calm down, I know what I'm doing!"
    elsif is_yelling?(remark)
      "Whoa, chill out!"
    elsif remark.end_with?("?")
      "Sure."
    else
      "Whatever."
    end
  end

  def self.is_yelling?(string)
    !(string =~ /[a-z]/) && (string =~ /[A-Z]/)
  end

end

module BookKeeping
  VERSION = 2
end
