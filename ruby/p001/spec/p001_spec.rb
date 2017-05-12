# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.


require 'p001'
require 'spec_helper'

describe P001 do
  let (:p001){P001.new}

  it 'defines what a natural number is' do
    expect(p001.define_natural_number).to eq 'a whole number zero and up'
  end

  it 'lists natural numbers below 10' do
    expect(p001.list_naturals_under(10)).to eq [0,1,2,3,4,5,6,7,8,9]
  end

  it 'isolates multiples of 3 under 10' do
    expect(p001.list_multiples_under([3], 10)).to eq [3,6,9]
  end

  it 'isolates multiples of 5 under 10' do
    expect(p001.list_multiples_under([5], 10)).to eq [5]
  end

  it 'returns a sum of the multiples of 3 under 10' do
    expect(p001.sum_of_multiples_under([3], 10)).to eq 18
  end

  it 'returns a sum of the multiples of 3 or 5 under 10' do
    expect(p001.sum_of_multiples_under([3,5],10)).to eq 23
  end

  it 'doesnt count sums of both 3 and 5 twice' do
    expect(p001.sum_of_multiples_under([3,5],16)).to eq 23 + 10 + 12 + 15
  end

end

