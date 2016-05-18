#The sum of the squares of the first ten natural numbers is,
#
#12 + 22 + ... + 102 = 385
#The square of the sum of the first ten natural numbers is,
#
#(1 + 2 + ... + 10)2 = 552 = 3025
#Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
#
#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
#
class P006

  def say_hi
    'privet'
  end

  def square_of_sums(min_range, max_range)
    @range = (min_range..max_range).to_a 
    @square = 0
    @range.each {|i|
      @square += i**2
    }
    @square
  end

  def sum_of_squares(min_range, max_range)
    @range = (min_range..max_range).to_a
    @sum = 0
    @range.each {|i|
      @sum += i
    }
    @sum**2
  end
    
  def difference(min_range, max_range)
    @square = square_of_sums(min_range, max_range)
    @sum = sum_of_squares(min_range, max_range)
    @difference = @sum - @square
  end

end
