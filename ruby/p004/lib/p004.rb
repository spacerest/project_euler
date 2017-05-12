#A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#
#Find the largest palindrome made from the product of two 3-digit numbers.

class P004

  def say_hi
    'konnichiwa'
  end

  def is_palindrome?(number)
    @number_ary = number.to_s.split("")
    @is_palindrome = true
    @half_ary_length = @number_ary.length / 2
    @count = 0
    @count_neg = -1
    @half_ary_length.times do
      if @is_palindrome != false
	@number_ary[@count] == @number_ary[@count_neg] ? @is_palindrome : @is_palindrome = false
	@count += 1
	@count_neg -= 1
      end
    end
    @is_palindrome
  end

  def palindromes_over_under(min,max)
    @palindrome_ary = []
    (min...max).to_a.each { |i| 
      if is_palindrome?(i)
      @palindrome_ary << i
      end 
    }
    @palindrome_ary 
  end

  def possible_palindrome_products(no_digits_factor_1, no_digits_factor_2)
    @maximum = (10**no_digits_factor_1 - 1) * (10**no_digits_factor_2 - 1)
    @minimum = (10 * (no_digits_factor_1 - 1)) * (10 * (no_digits_factor_2 - 1))
    palindromes_over_under(@minimum, @maximum)
  end

  def largest_palindrome(no_digits_factor_1, no_digits_factor_2)
    @max_1 = (10**no_digits_factor_1 - 1) 
    @max_2 = (10**no_digits_factor_2 - 1)
    @min_1 = (10 * (no_digits_factor_1 - 1)) 
    @min_2 = (10 * (no_digits_factor_2 - 1))
    @palindrome_ary = possible_palindrome_products(no_digits_factor_1, no_digits_factor_2)
    @palindrome_products = []
    (@min_1..@max_1).each { |m1|
      (@min_2..@max_2).each { |m2| 
        @palindrome_ary.each { |i| 
	  if m1 * m2 == i
	    @palindrome_products << i
	    #puts "#{m1} times #{m2} is #{i}"
	  end
	}
      }
    }
  @palindrome_products.max
  end  

end
