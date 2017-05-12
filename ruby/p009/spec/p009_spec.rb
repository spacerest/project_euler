## A Pythagorean triplet is a set of three natural numbers, a < b < c, for which, Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
## 
## a2 + b2 = c2
## For example, 32 + 42 = 9 + 16 = 25 = 52.
## 
## There exists exactly one Pythagorean triplet for which a + b + c = 1000.
## Find the product abc.
## 
## a2 + b2 = c2
## For example, 32 + 42 = 9 + 16 = 25 = 52.
## 
## There exists exactly one Pythagorean triplet for which a + b + c = 1000.
## Find the product abc.
## 
require 'spec_helper'
require 'p009'

describe P009 do

  let( :p009 ){ P009.new }

  it 'says hi in english' do
    'hi'
  end

  it 'finds c when a = 3 and b = 4' do
    expect(p009.find_c(3, 4)).to eq 5
  end

  it 'finds a, b, and c when their sum is 12' do
    expect(p009.find_triplets(12)).to eq [3,4,5]
  end

end
