require_relative '../lib/string_calculator'

puts "Enter numbers to add (or 'exit' to quit):"

loop do
    print "> "
    numbers = gets.chomp
    break if numbers.downcase == 'exit'

    begin
      result = StringCalculator.add(numbers)


      puts "Result: #{result}"
    rescue => e
      puts "Error: #{e.message}"
    end
  end
