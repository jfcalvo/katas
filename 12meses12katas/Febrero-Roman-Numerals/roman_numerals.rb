class RomanNumerals

  ROMAN_RANGES = [1..5, 5..10, 10..50, 50..100, 100..500, 500..1000]
  
  def initialize(base_numbers)
    @base_numbers = base_numbers
  end

  def to_roman(number)
    if @base_numbers.is_base? number
      return @base_numbers.get_base number
    else
      return decompose_to_bases number
    end
  end
  
  private
  
  def decompose_to_bases(number)
    ROMAN_RANGES.each do |range|
      return decompose_with_range(number, range) if range.cover? number
    end    
  end
  
  def decompose_with_range(number, range)
    inferior_range_distance = number - range.begin
    superior_range_distance = range.end - number
    if number < range.end - 1
      return @base_numbers.get_base(range.begin) + self.to_roman(inferior_range_distance)  
    end
    return self.to_roman(superior_range_distance) + @base_numbers.get_base(range.end)
  end
  
end

class RomanBaseNumbers
  
  ROMAN_BASES = {1 => "I", 5 => "V", 10 => "X", 50 => "L", 100 => "C", 500 => "D", 1000 => "M"}
  
  def is_base?(number)
    ROMAN_BASES.has_key? number
  end
  
  def get_base(number)
    ROMAN_BASES[number]
  end
  
end