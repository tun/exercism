class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < StandardError
  end

  def self.calculate(first_operand, second_operand, operation)
    raise ArgumentError unless first_operand.is_a?(Integer)
    raise ArgumentError unless second_operand.is_a?(Integer) 
    raise UnsupportedOperation unless ALLOWED_OPERATIONS.include? operation

    begin
      result = case operation
               when '+'
                 first_operand + second_operand
               when '*'
                 first_operand * second_operand
               when '/'
                 first_operand / second_operand
               end

    "#{first_operand} #{operation} #{second_operand} = #{result}"

    rescue ZeroDivisionError
      'Division by zero is not allowed.'
    end
  end
end
