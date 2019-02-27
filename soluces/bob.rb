# class Bob for the workshop Ruby
class Bob
  def hey(message)
    if said_nothing? message
      'Fine. Be that way!'
    elsif yelling? message
      'Whoa, chill out!'
    elsif question? message
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
