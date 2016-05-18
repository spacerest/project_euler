#A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#
#Find the largest palindrome made from the product of two 3-digit numbers.


require 'p004'
require 'spec_helper'

describe P004 do
let( :p004 ){ P004.new }

  it 'says hi in japanese' do
    expect(p004.say_hi).to eq 'konnichiwa'
  end

  it 'can recognize a two-digit palindrome' do
    expect(p004.is_palindrome?(11)).to eq true
  end

  it 'can recognize a two-digit non-palindrome' do
    expect(p004.is_palindrome?(12)).to eq false
  end

  it 'can recognize a three-digit palindrome' do
    expect(p004.is_palindrome?(101)).to eq true
  end

  it 'can recognize a four-digit non-palindrome' do
    expect(p004.is_palindrome?(2342)).to eq false
  end

  it 'can recognize a nine-digit non-palindrome' do
    expect(p004.is_palindrome?(439001934)).to eq false
  end

  it 'can list all palindromes under 81 and over 10' do
    expect(p004.palindromes_over_under(10,81)).to eq [11,22,33,44,55,66,77]
  end

  it 'can list all palindromes that might be products of 1-digit factors' do
    expect(p004.possible_palindrome_products(1,1)).to eq [0,1,2,3,4,5,6,7,8,9,11,22,33,44,55,66,77]
  end

  #it 'can find the largest palindrome product of two 2 digit factors' do
  #  expect(p004.largest_palindrome(2,2)).to eq 9009
  #end

end
