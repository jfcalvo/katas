class RomanNumerals

  ROMAN_BASES = {1 => "I", 5 => "V", 10 => "X", 50 => "L", 100 => "C", 500 => "D", 1000 => "M"}
  ROMAN_RANGES = [1..5, 5..10, 10..50, 50..100, 100..500, 500..1000]

  def to_roman(number)
    if ROMAN_BASES.has_key? number
      return ROMAN_BASES[number]
    else
      ROMAN_RANGES.each do |range|
        if range.cover? number
          delta_min = number - range.begin
          delta_max = range.end - number
          if delta_min <= delta_max
            return ROMAN_BASES[range.begin] + self.to_roman(delta_min)
          else
            return self.to_roman(delta_max) + ROMAN_BASES[range.end]
          end
        end
      end
    end
  end
  
end