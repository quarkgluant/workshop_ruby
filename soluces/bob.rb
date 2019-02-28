# class Bob for the workshop Ruby
class Bob
  def hey(message)
    case
    when said_nothing?(message)
      'Fine. Be that way!'
    when yelling?(message)
      'Whoa, chill out!'
    when question?(message)
      'Sure.'
    else
      'Whatever.'
    end
  end

  private

  def yelling?(message)
    message =~ /[A-Z]/ && message.upcase == message
  end

  def question?(message)
    message.end_with? '?'
  end

  def said_nothing?(message)
    message.to_s.strip.empty?
  end
end
