## The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
## 
## Find the sum of all the primes below two million.
##  

require 'spec_helper'
require 'p010'

describe P010 do

  let( :p010 ){ P010.new }

  it 'says hi in hawaiian' do
    'aloha'
  end

  it 'finds primes below 10' do
    expect(p010.primes_under(10)).to eq [2, 3, 5, 7]
  end

  it 'finds the sum of primes below 10' do
    expect(p010.sum_of_primes(10)).to eq 17
  end

end
