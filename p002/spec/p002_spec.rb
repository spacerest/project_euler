#Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

#1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

#By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.


require 'p002'
require 'spec_helper'

describe P002 do
  let(:p002){ P002.new }

  it 'returns a fibonacci sequence up to 20' do
    expect(p002.fibonacci_under(20)).to eq [1,2,3,5,8,13]
  end

  it 'returns a sum of the even indices in a fibonacci sequence up to 4 mil' do
    expect(p002.fibonacci_multiple_of_under(2,4000000)).to eq 'unknown'
  end

end 
