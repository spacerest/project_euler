#The prime factors of 13195 are 5, 7, 13 and 29.
#
#What is the largest prime factor of the number 600851475143 ?

require 'spec_helper'
require 'p003'

describe P003 do
  let(:p003){ P003.new } 

  it 'knows that 1 is a prime number' do
    expect(p003.is_prime?(1)).to eq true
  end

  it 'knows that 2 is a prime number' do
    expect(p003.is_prime?(2)).to eq true 
  end

  it 'knows that 4 is not a prime number' do
    expect(p003.is_prime?(4)).to eq false
  end

  it 'finds the prime factors of 6' do
    expect(p003.prime_factors_of(6)).to eq [2,3] 
  end

  it 'finds the prime factors of 8' do
    expect(p003.prime_factors_of(8)).to eq [2]
  end

  it 'finds the prime factors of 10' do
    expect(p003.prime_factors_of(10)).to eq [2,5]
  end

  it 'finds all possible factors of target number' do
    expect(p003.prime_factors_of(600851475143)).to eq [71,839,1471,6857]
  end

  it 'finds the maximum factor of target number' do
    expect(p003.max_prime_factor_of(600851475143)).to eq 6857
  end

end
