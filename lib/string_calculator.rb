class StringCalculator
  def add(numbers)
    # this piece of code accepts only string values as we are dealing with string
    raise 'only accepts a string' unless numbers.is_a?(String)

    # Split the given string into an integer array.
    integer_values = numbers.split(/[^0-9-]+/).map(&:to_i)

    # Check for negative numbers and raise an error if any are found
    negatives = integer_values.select { |num| num < 0 }
    raise "cannot accept negatives -> #{negatives.join(',')}" if negatives.any?


    # Calculate the sum, ignoring numbers greater than 1000 for limit lets check within 1k.
    integer_values.sum { |num| num <= 1000 ? num : 0 }

  end
end
