#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
#
#If any number has more than one prime factor, need to keep all of them. Any unique prime factor needs to stay. Any duplicates can go.

class P005

  def say_hi
    'annyeonghasseyo'
  end

  def smallest_dividend(low,high)
    @orig_ary = (low..high).to_a
    @primes_ary = []
    @orig_ary.each { |i|
      @primes_ary << prime_factors_of(i)
    }
    @primes_ary.each { |i|
      i.each { |j|
	@ncount = 0
        @orig_ary.length.times do 
	  if @primes_ary[@ncount] && i.count(j) <= @primes_ary[@ncount].count(j) && i != @primes_ary[@ncount] && j != 1
	    i.count(j).times do
	      i.unshift(1)
	    end
	    i.delete(j)
	    puts "#{@ncount} is @ncount, #{i} is i, #{j} is j, #{@primes_ary} is primes_ary, #{@orig_ary} is orig_array"
	  end
	  @ncount += 1
	end
      } 
    }
    @smallest_dividend = 1
    @primes_ary = @primes_ary.flatten
    @primes_ary.each { |i|
      @smallest_dividend *= i
    } 
    @smallest_dividend
  end

  def is_prime?(number)
    @prime = true
      (2...(number/2 + 1)).to_a.each { |i|  
        if @prime == false
          break
        elsif number % i == 0
          @prime = false
        end
      }
    @prime
  end

  def prime_factors_of(number)
    @prime_factors = []
    (2...(number/2 + 1)).each { |i|  
      if is_prime?(i) && number % i == 0
	until number % i != 0
	  @prime_factors << i
	  number /= i
	end
      end
    }
    if number != 1
      @prime_factors << number
    end
    @prime_factors
  end



  
end
