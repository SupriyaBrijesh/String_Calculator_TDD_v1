# spec/string_calculator_spec.rb

require '../lib/string_calculator.rb'


describe StringCalculator do

  subject(:calculator) { described_class.new }

  it 'should return 0 for an empty string' do
    expect(calculator.add('')).to eq(0)
  end

  it 'should return the sum of the numbers in the passed string, if the passed string contains comma delimiters' do
    expect(calculator.add('12,34')).to eq(46)
  end

  it 'should ignore numbers larger than 1000' do
    expect(calculator.add("//;\n1;2:1001")).to eq(3)
  end

  it 'should accept a string' do
    expect{ calculator.add('1,2,3') }.not_to raise_error
  end

  it 'should not accept other data types' do
    expect{ calculator.add(['123']) }.to raise_error('only accepts a string')
  end
end
