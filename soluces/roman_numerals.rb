module BookKeeping
  VERSION = 2
end

# Monkey patch the Integer class to add the roman method
class Integer
  def to_roman
    rank = digits.reverse.length
    res = []
    digits.reverse_each do |number|
      ten, half, unit = case rank
                        when 4
                          [nil, nil, 'M']
                        when 3
                          %w[M D C]
                        when 2
                          %w[C L X]
                        when 1
                          %w[X V I]
                        end
      roman = case number
              when (1..3) then
                unit.to_s * number
              when 4 then
                unit.to_s + half.to_s
              when 5 then
                half.to_s
              when (6..8) then
                half.to_s + unit.to_s * (number - 5)
              when 9 then
                unit.to_s + ten.to_s
              when 10 then
                ten.to_s
              end
      res << roman
      rank -= 1
    end
    res.join
  end
end
