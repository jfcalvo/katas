class StringCalculator
  attr_reader :input_parser
  
  def initialize(input_parser, numbers_validator)
    @input_parser = input_parser
    @numbers_validator = numbers_validator
  end
  
  def add(input)
    numbers = @input_parser.extract_numbers input
    @numbers_validator.validate(numbers)
    numbers.inject(0, :+)
  end
end

class InputParser
  DELIMITER_IDENTIFICATOR = "//"
  
  def extract_numbers(input)
    if input.start_with? DELIMITER_IDENTIFICATOR
      return input[4..input.size].split(/#{input[2]}/).map(&:to_i)
    end
    return input.split(/\n|,/).map(&:to_i)
  end
  
end

class NumbersValidator

  def validate(numbers)
    negative_numbers = numbers.select { |number| number < 0 }
    raise "negatives not allowed: #{negative_numbers.join ", "}" unless negative_numbers.empty?
  end

end
