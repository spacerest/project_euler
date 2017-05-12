#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

#What is the 10 001st prime number?


require 'p007'
require 'spec_helper'

describe P007 do
let( :p007 ){ P007.new }

  it 'says hi in spanish' do
    expect(p007.say_hi).to eq 'hola'
  end

  it 'finds the 6th prime' do
    expect(p007.nth_prime(6)).to eq 13
  end


end
