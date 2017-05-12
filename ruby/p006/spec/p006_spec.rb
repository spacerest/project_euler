#The sum of the squares of the first ten natural numbers is,
#Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
#
#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.juusum of the squares of the first ten natural numbers is,
#
#12 + 22 + ... + 102 = 385
#The square of the sum of the first ten natural numbers is,
#
#(1 + 2 + ... + 10)2 = 552 = 3025
#Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
#
#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
#
require 'p006'
require 'spec_helper'

describe P006 do
let( :p006 ){ P006.new }

  it 'says hi in russian' do
    expect(p006.say_hi).to eq 'privet'
  end

  it 'returns the square of the sum of the first ten natural numbers' do
    expect(p006.square_of_sums(1,10)).to eq 385 
  end
    
  it 'returns the sum of the squares of the first ten natural numbers' do
    expect(p006.sum_of_squares(1,10)).to eq 3025
  end

  it 'returns the difference of the sum and the square' do
    expect(p006.difference(1,10)).to eq 2640
  end

end
