class StringCalculator
  def add(numbers)

    # Split the given string into an integer array.
    integer_values = numbers.split(/[^0-9-]+/).map(&:to_i)

    # Calculate the sum, ignoring numbers greater than 1000 for limit lets check within 1k.
    integer_values.sum { |num| num <= 1000 ? num : 0 }
  end
end
