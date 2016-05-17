#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

require 'p005'
require 'spec_helper'

describe P005 do
let( :p005 ){ P005.new }

  it 'says hi in korean' do
    expect(p005.say_hi).to eq 'annyeonghasseyo'
  end

  it 'finds the smallest number that can be divided by 1 to 2 w/o any remainder' do
    expect(p005.smallest_dividend(1,2)).to eq 2
  end

  it 'finds the smallest divisor when it is a product of all numbers' do
    expect(p005.smallest_dividend(1,3)).to eq 6
  end

  it 'finds the smallest divisor when it is less than the product of all numbers' do
    expect(p005.smallest_dividend(2,4)).to eq 12
  end

  it 'finds 1 - 5' do
    expect(p005.smallest_dividend(1,5)).to eq 60 
  end

  it 'finds 1 - 10' do
    expect(p005.smallest_dividend(1,10)).to eq 2520
  end

  it 'finds 1 - 20' do
    expect(p005.smallest_dividend(1,20)). to eq 232792560 
  end
  

end
