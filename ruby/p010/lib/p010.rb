## The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
## 
## Find the sum of all the primes below two million.
## 

class P010

  def say_hi
    'aloha' 
  end

  def is_prime?(number)
    (2..(number / 2)).none? { |i| number % i == 0 }
  end

  def primes_under(number)
    @primes_sieve = Array.new(number, true)
    @primes_sieve.each_with_index { |bool, ind|
      if bool && ind != 0
	((ind + ind + 1)..number).step(ind + 1) { |i| 
	  @primes_sieve[i] = false
	}
      end
     }

    @primes_sieve = @primes_sieve.each_index.select{ |i| @primes_sieve[i] == true }.map { |i| i + 1 }
    @primes_sieve.shift
    @primes_sieve
    
  end

  def sum_of_primes(number)
    primes_under(number).reduce(:+)
  end 

  

end
